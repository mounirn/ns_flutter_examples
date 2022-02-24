import 'package:ably_flutter_example/push_notifications/push_notification_handlers.dart';
import 'package:ably_flutter_example/ui/ably_service.dart';
import 'package:ably_flutter_example/ui/message_encryption/message_encryption_sliver.dart';
import 'package:ably_flutter_example/ui/push_notifications/push_notifications_sliver.dart';
import 'package:ably_flutter_example/ui/realtime_sliver.dart';
import 'package:ably_flutter_example/ui/rest_sliver.dart';
import 'package:ably_flutter_example/ui/system_details_sliver.dart';

import 'package:flutter/material.dart';

import '../drawer.dart';

runAblyApp( ) {
  WidgetsFlutterBinding.ensureInitialized();
  PushNotificationHandlers.setUpEventHandlers();
  PushNotificationHandlers.setUpMessageHandlers();
  
  final ablyService = AblyService();
  runApp(MaterialApp(home: AblyFlutterExampleScreen(ablyService)) );
}

class AblyFlutterExampleScreen extends StatelessWidget {
  final AblyService ablyService;

  const AblyFlutterExampleScreen(this.ablyService, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Ably Flutter Example App'),
          ),
          drawer: buildAppDrawer(context),
          body: Center(
            child: ListView(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 36),
                children: [
                  SystemDetailsSliver(ablyService.apiKey),
                  const Divider(),
                  RealtimeSliver(ablyService),
                  const Divider(),
                  RestSliver(ablyService.rest),
                  const Divider(),
                  MessageEncryptionSliver(
                      ablyService.encryptedMessagingService),
                  const Divider(),
                  PushNotificationsSliver(ablyService.pushNotificationService)
                ]),
          ),
        ),
      );
}