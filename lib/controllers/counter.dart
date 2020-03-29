import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;

  int get value => _counter;

  void increment() {
    this._counter += 1;
    notifyListeners();
  }
}
