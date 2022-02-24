// ignore_for_file: avoid_print

import 'package:ns_flutter_examples/keys.dart';
import 'package:pubnub/pubnub.dart';
import 'package:flutter_test/flutter_test.dart';

void main()  {
  test ('pubnub' , () async {
    // Create PubNub instance with default keyset.
    var pubnub = PubNub(
        defaultKeyset:
            Keyset(subscribeKey: cPubNubSubscribeKey, publishKey: cPubNubPublishKey, 
              uuid: const UUID('My First PubNub Flutter App')));

    // Subscribe to a channel
    var subscription = pubnub.subscribe(channels: {'test'});

    subscription.messages.take(1).listen((envelope) async {
      print(envelope.payload);

      await subscription.dispose();
    });

    await Future.delayed(const Duration(seconds: 3));

    // Publish a message
    await pubnub.publish('test', {'message': 'My message!'});

    // Channel abstraction for easier usage
    var channel = pubnub.channel('test');

    await channel.publish({'message': 'Another message'});

    // Work with channel History API
    var history = channel.messages();
    var count = await history.count();
    expect (count > 0, true);

    print('Messages on test channel: $count');
  });
}