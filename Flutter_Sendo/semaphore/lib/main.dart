import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    for (double i = 0.0; i < 10; i = i + 0.001) {
      await new Future.delayed(new Duration(milliseconds: 50), () {
        setState(() {
          _counter++;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: new Container(
          width: 300.0,
          color: Colors.red,
          height: 300.0,
          child: Center(
            child: Stack(
              children: <Widget>[
                Align(
                  child: Image.asset(
                    'images/person.png',
                    width: 45.0,
                    height: 200.0,
                  ),
                ),
                Align(
                  child: Transform.rotate(
                    angle: _counter*0.1,
                    child: Image.asset(
                      'images/flat_left.png',
                      height: 130.0,
                    ),
                    alignment: Alignment(-0.65,-0.9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
