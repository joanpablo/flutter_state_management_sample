import 'package:flutter/material.dart';

class ChangeNotifierProvider<T extends Listenable> extends InheritedNotifier<T> {
  ChangeNotifierProvider({@required T notifier, @required Widget child})
      : super(notifier: notifier, child: child);
}