import 'package:flutter/material.dart';
import 'package:flutter_state_management_sample/controllers/counter.dart';
import 'package:flutter_state_management_sample/providers/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, rebuildContext: false);
    print('rebuilding IncrementButton');
    return FloatingActionButton(
      onPressed: () {
        counter.increment();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
