import 'package:flutter/foundation.dart';

/// This class represents a model
/// that notify listeners when it has some change
class Counter extends ChangeNotifier {
  int _counter = 0;

  /// Gets the value of the counter
  int get value => _counter;

  /// Increments the value of the counter
  /// and notify to listeners
  void increment() {
    this._counter += 1;
    notifyListeners();
  }
}
