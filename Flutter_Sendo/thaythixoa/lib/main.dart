import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:dialog_loading/dialog_loading.dart';

/// A widget that ensures it is always visible when focused.
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thaythixoa/animation_face.dart';
import 'package:thaythixoa/dialog.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) :super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<bool> _onWillPop() {
    return Container() ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: new Center(
          child: Container(
            child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  DialogLoading(context).showLoading();
//                  Future.delayed(Duration(seconds: 3),(){
//                    DialogLoading(context).hideLoading();
//                  });
                }),
          )),
    );
  }
}
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new AnimationFace(),
    );
  }
}
