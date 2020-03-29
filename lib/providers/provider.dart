import 'package:flutter/material.dart';
import 'package:flutter_state_management_sample/providers/change_notifier_provider.dart';

/// This class is responsible for providing the requested model
class Provider {
  /// Returns the nearest model up its widget tree
  ///
  /// If [rebuildContext] is `true` (default value), all the dependents widgets
  /// will rebuild
  ///
  /// `rebuildContext: false` is necessary if want to avoid rebuilding the
  /// [context] when model changes:
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
