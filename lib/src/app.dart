import 'package:flutter/material.dart';

import 'package:flutterio_test/src/pages/counter_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}