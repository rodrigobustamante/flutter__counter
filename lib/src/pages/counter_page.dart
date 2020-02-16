import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25.00);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Valor del contador:",
              style: _textStyle,
            ),
            Text(
              "$_counter",
              style: _textStyle,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          onPressed: _subtractOne,
          tooltip: "Restar uno",
          child: Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: _reset,
          tooltip: "Volver a 0",
          child: Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: _sumOne,
          tooltip: "Sumar uno",
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _sumOne () {
    setState(() => _counter++);
  }
  
  void _subtractOne () {
    setState(() => _counter--);
  }
  
  void _reset () {
    setState(() =>_counter = 0);
  }
}