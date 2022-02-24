// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:ably_flutter/ably_flutter.dart' as ably;

import '../app.dart';
import '../drawer.dart';

runAblyChat( ) {
  WidgetsFlutterBinding.ensureInitialized();

  runSample (const ChatScreen() );
}

/// replace with yours here
const String cAblyAPIKey = "jSzGVw.Clf44w:0zpZYjrKFEO8e9awLRKP-Yt1lVk_jua1r3hYV5ylWCw";

class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
    }
  );
}

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
    }
  );
}

// CURRENT USER
final User currentUser = User(
  id: 0,
  name: 'Current User',
);

// OTHER USER
final User randomChatUser = User(
  id: 1,
  name: 'Random Chat User',
);

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: currentUser,
    time: '4:32 PM',
    text: "Nothing much, just trying out Ably's new Flutter plugin",
    unread: true,
  ),
  Message(
    sender: randomChatUser,
    time: '4:30 PM',
    text: "Hey, how's it going?",
    unread: true,
  ),
];

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ably.Realtime? realtimeInstance;
  var newMsgFromAbly;
  ably.RealtimeChannel? chatChannel;
  var myInputController = TextEditingController();
  var myRandomClientId = '';

  @override
  void initState() {
    super.initState();
    createAblyRealtimeInstance();
  }

  @override
  void dispose() {
    myInputController.dispose();
    super.dispose();
  }

  void createAblyRealtimeInstance() async {
    var uuid = const Uuid();
    myRandomClientId = uuid.v4();
    var clientOptions = ably.ClientOptions.fromKey(cAblyAPIKey);
    clientOptions.clientId = myRandomClientId;
    try {
      realtimeInstance = ably.Realtime(options: clientOptions);
      print('Ably instantiated');
      chatChannel = realtimeInstance?.channels.get('flutter-chat');
      subscribeToChatChannel();
      realtimeInstance?.connection
          .on(ably.ConnectionEvent.connected)
          .listen((ably.ConnectionStateChange stateChange) async {
        print('Realtime connection state changed: ${stateChange.event}');
      });
    } catch (error) {
      print('Error creating Ably Realtime Instance: $error');
      rethrow;
    }
  }

  String getMessageTime(DateTime? time) {
    if (time == null) {
      return '';
    }
    var hoursIn12HrFormat = time.hour > 12
        ? (time.hour - 12)
        : (time.hour);
    var timeOfDay = time.hour < 12 ? ' AM' : ' PM';
    var msgTime = hoursIn12HrFormat.toString() +
        ":" +
        time.minute.toString() +
        timeOfDay;
    return msgTime;
  }

  void subscribeToChatChannel() {
    var messageStream = chatChannel?.subscribe();
    messageStream?.listen((ably.Message message) {
      Message newChatMsg;
      newMsgFromAbly = message.data;
      print("New message arrived ${message.data}");
     
      if (message.clientId == myRandomClientId) {
        newChatMsg = Message(
          sender: currentUser,
          time: getMessageTime(message.timestamp),
          text: newMsgFromAbly["text"],
          unread: false,
        );
      } else {
        newChatMsg = Message(
          sender: randomChatUser,
          time: getMessageTime(message.timestamp),
          text: newMsgFromAbly!.text,
          unread: false,
        );
      }

      setState(() {
        messages.insert(0, newChatMsg);
      });
    });
  }

  void publishMyMessage() async {
    var myMessage = myInputController.text;
    myInputController.clear();
    chatChannel?.publish(name: "chatMsg", data: {
      "sender": "randomChatUser",
      "text": myMessage,
    });
  }

  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).colorScheme.secondary : const Color(0xFFFFEFEE),
        borderRadius: isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            message.text,
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              controller: myInputController,
              onChanged: (value) {},
              decoration: const InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              publishMyMessage();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text(
          'Ably Chat',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      drawer: buildAppDrawer(context),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}