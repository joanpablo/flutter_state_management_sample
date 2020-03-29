import 'package:flutter/material.dart';
import 'package:flutter_state_management_sample/providers/change_notifier_provider.dart';

class Provider {
  static T of<T extends Listenable>(BuildContext context,
      {bool rebuildContext: true}) {
    if (rebuildContext) {
      return context
          .dependOnInheritedWidgetOfExactType<ChangeNotifierProvider<T>>()
          .notifier;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<ChangeNotifierProvider<T>>();
    return (element.widget as InheritedNotifier<T>).notifier;
  }
}
