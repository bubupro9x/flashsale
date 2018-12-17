
import 'package:flutter/material.dart';

class Sticker extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Sticker();
  }

}

class _Sticker extends State<Sticker> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional(1.5, -0.65),
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(45 / 360),
            child: Center(
              child: Container(
                color: Colors.white,
                width: 180.0,
                height: 180.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}