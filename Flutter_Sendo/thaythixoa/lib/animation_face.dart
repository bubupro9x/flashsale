import 'dart:async';

import 'package:flutter/material.dart';

class AnimationFace extends StatefulWidget {
  _AnimationFaceState createState() => _AnimationFaceState();
}

class _AnimationFaceState extends State<AnimationFace>
    with SingleTickerProviderStateMixin {
  Animation<double> _animationFace;
  AnimationController _animationFaceController;

  initState() {
    super.initState();
    _animationFaceController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    _animationFace =
        Tween(begin: 0.0, end: 1.0).animate(_animationFaceController)
          ..addListener(() {
            setState(() {});
          });

//    _animationFaceController.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Transform.rotate(
              angle: _animationFace.value,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 200.0,
                width: 200.0,
                child: FlutterLogo(),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _animationFaceController.forward();
               Future.delayed(Duration(milliseconds: 1100),);

              },
            )
          ],
        ),
      ),
    );
  }

  dispose() {
    _animationFaceController.dispose();
    super.dispose();
  }
}
