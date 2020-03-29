import 'package:flutter/material.dart';
import 'package:flutter_state_management_sample/models/counter.dart';
import 'package:flutter_state_management_sample/providers/provider.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    print('rebuilding CounterDisplay');
    return Text(
      '${counter.value}',
      style: Theme.of(context).textTheme.display1,
    );
  }
}
