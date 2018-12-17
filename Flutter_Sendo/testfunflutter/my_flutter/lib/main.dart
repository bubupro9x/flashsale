import 'package:flutter/material.dart';
import 'package:adsserving/ui/ads/view/home_ads.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: 'Flutter Demo',
      theme: new ThemeData.light(),
      home: new HomeAds(),
    );
  }
}
