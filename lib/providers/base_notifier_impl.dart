import 'package:flutter/material.dart';

/// Represents a provider that exposes a ChangeNotifier
/// to its descendants and listen to changes in model and rebuilds all
/// the dependant widgets.
class BaseInheritedNotifier<T extends Listenable> extends InheritedNotifier<T> {
  BaseInheritedNotifier({@required T notifier, @required Widget child})
      : super(notifier: notifier, child: child);
}
