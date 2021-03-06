import 'package:flutter/material.dart';
import 'package:flutter_state_management_sample/models/counter.dart';
import 'package:flutter_state_management_sample/providers/change_notifier_provider.dart';
import 'package:flutter_state_management_sample/views/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('build App');
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: ChangeNotifierProvider<Counter>(
        notifier: Counter(),
        dispose: (counter) => counter.dispose(),
        child: MyHomePage(
          title: 'Flutter Demo Home Page',
        ),
      ),
    );
  }
}
