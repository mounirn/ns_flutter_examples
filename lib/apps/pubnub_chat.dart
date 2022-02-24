// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:pubnub/pubnub.dart' as pn;
import '../keys.dart';

import '../app.dart';
import '../drawer.dart';

/// https://github.com/ably-labs/flutter-chat-demo

runPubNubChat( ) {
  WidgetsFlutterBinding.ensureInitialized();

  runSample (const PubNubChatScreen() );
}


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
    text: "Nothing much, just trying out PubNub Flutter plugin",
    unread: true,
  ),
  Message(
    sender: randomChatUser,
    time: '4:30 PM',
    text: "Hey, how's it going?",
    unread: true,
  ),
];

const String cChatChannel = "Flutter-Chat";

class PubNubChatScreen extends StatefulWidget {
  const PubNubChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<PubNubChatScreen> {
  pn.PubNub? pubnub;

  // var newMsgFromAbly;
  pn.Subscription? chatChannelSubscription;
  var myInputController = TextEditingController();
  var myRandomClientId = const Uuid().v1();

  @override
  void initState() {
    super.initState();
    initPubNub();
  }

  @override
  void dispose() {
    myInputController.dispose();
    pubnub?.unsubscribeAll();

    super.dispose();
  }

  
  String getUserId() {
    return myRandomClientId ;  
  }

  void initPubNub() async {
    
    try {
      pubnub = pn.PubNub(
        defaultKeyset:
            pn.Keyset(subscribeKey: cPubNubSubscribeKey, publishKey: cPubNubPublishKey, 
              uuid: pn.UUID(getUserId())
            )
      );
      print('PubNub instantiated - version ${pn.PubNub.version}');

    /*  pubnub?.addListener( (event) {
          // 
      });
    */
 
      subscribeToChatChannel();
    } catch (error) {
      print('Error initializing PubNub $error');
      rethrow;
    }
  }

  String getMessageTime(pn.Timetoken? timeToken) {

    if (timeToken == null) {
      return '';
    }
    var time = timeToken.toDateTime();
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
      chatChannelSubscription = pubnub?.subscribe(channels: {cChatChannel},
       // withPresence: true
      );
      print('Chat channel subscribed: ${chatChannelSubscription?.isCancelled == true? 'Canceled': 'OK'}');
      print (chatChannelSubscription);
      chatChannelSubscription?.messages.listen((pn.Envelope message) {
      dynamic newMsg = message.payload;
      Message newChatMsg;
      print("New message arrived $newMsg}");
      try {
        if (newMsg['sender'] == myRandomClientId) {
          newChatMsg = Message(
            sender: currentUser,
            time: getMessageTime(message.publishedAt),
            text: newMsg["text"],
            unread: false,
          );
        } else {
          newChatMsg = Message(
            sender: randomChatUser,
            time: getMessageTime(message.publishedAt),
            text: newMsg['text'],
            unread: false,
          );
        }
        print ("Messages before inserting length:  ${messages.length}");
        messages.insert(0, newChatMsg);
        setState(() {
          // messages.insert(0, newChatMsg);
          print('Set State Added message - messages length: ${messages.length}');
        });
      } catch(error) {
        print ("subscribeToChatChannel.error $error - PN.Envelope: ");
        print (message);
      }
    
    }, 
    onError: (error) {
      print ("Channel onError: $error");
    }, 
    onDone: () {
      print ("Channel onDone");
    }, 
    cancelOnError: false
    );
  }

  ///
  /// Checks the current subscription status before sending a new message
  void publishMyMessage() async {
    var myMessage = myInputController.text;
    myInputController.clear();
    try {
      // check the subscription
      if (chatChannelSubscription?.isCancelled == true){
        
        await chatChannelSubscription?.restore();
        print ("Chat channel subscription is canceled - called restore");
        // return;
      }  else if (chatChannelSubscription?.isPaused == true){
        
        chatChannelSubscription?.resume();
        print ("Chat channel subscription is paused");
        // return;
      }

      if (chatChannelSubscription?.isCancelled == true) {
        subscribeToChatChannel();
      }

      var channel = pubnub?.channel(cChatChannel);
      if (channel == null) {
        print ("unable to access channel: $cChatChannel");
        return;
      }
      var publishResult = await channel.publish({ 
        "sender": myRandomClientId,
        "text": myMessage,
      },     
      // meta:   
      storeMessage: true
      );
      print('Published Message with results: ${publishResult.isError == false?  'ok' : 'error'}');
    } catch(error) {
      print ("publishMessage error: $error");
    }
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
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {
                publishMyMessage();
              },
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
          'PubNub Chat',
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
      body: // SingleChildScrollView( 
        GestureDetector(
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
          ]),
        ),
    //  )
    );
  }
}