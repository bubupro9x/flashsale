//import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
////  SchedulerBinding sched = SchedulerBinding.instance;
////  double height = 1.0;
//
////  MovingTextState() {
//  // kick off the animation. Is this the best place?
//  // I assume so because I assume `this` is the same instance for
//  // the whole app lifecycle.
////    sched.scheduleFrameCallback(updatePadding);
////  }
//
////  updatePadding(_) {
////     tell the system that my state is changing, thus we need to re-render me
////    setState(() {
////      height++;
////       is this bad? should I cache the height? it will change when rotated
////      if (height > 10.0) {
////        height = 0.0;
////      }
////    });
////     continue the animation
////    sched.scheduleFrameCallback(updatePadding);
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    // I can only position something in a stack. Thus, here's a Stack.
//    return Center(
//      child: Stack(
//        children: <Widget>[
//          Positioned(
//            top: 21.0,
//            left: 0.0,
//            right: 0.0,
//            child: Text(
//              'hello',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                fontFamily: 'Roboto',
//                fontSize: 12.0,
//                fontWeight: FontWeight.bold,
//                color: Colors.white,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
