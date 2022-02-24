
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ns_flutter_examples/app_model.dart';
import 'package:ns_flutter_examples/samples/camera.dart';

import 'drawer.dart';
import 'dart:developer' as developer;

Future<void> runSample(Widget sample) async {
  getIt.registerSingleton<AppModel>(AppModelImplementation(),
      signalsReady: true);
  await initCameras();
  // runApp(const MyApp());
  runZonedGuarded(() {
    runApp(MyApp(sample));
  }, (dynamic error, dynamic stack) {
    developer.log("Something went wrong!", error: error, stackTrace: stack);
  });
}

class MyApp extends StatelessWidget {
  final Widget home;
  const MyApp(this.home, {Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pubs Samples',
      routes: getAppRoutes(context),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
  //    home: const MyHomePage(title: 'Flutter Demo Home Page'),
    home: home,
    );
  }
}