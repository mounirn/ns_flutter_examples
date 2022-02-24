import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

// the get it singleton
GetIt getIt = GetIt.instance;

abstract class AppModel extends ChangeNotifier {
  void incrementCounter();
  void save(String content);

  int get counter;
  String get content;
}

class AppModelImplementation extends AppModel {
  int _counter = 0;
  String _content = '';

  AppModelImplementation() {
    /// lets pretend we have to do some async initialization
    Future.delayed(const Duration(seconds: 3)).then((_) => getIt.signalReady(this));
  }

  @override
  int get counter => _counter;


  @override
  String get content => _content;

  @override
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  @override
  void save(String content) {
    _content = content;
    notifyListeners();
  }
}