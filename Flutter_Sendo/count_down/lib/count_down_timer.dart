//
//import 'package:flutter/material.dart';
//
//var globalTimerStream;
//String serverTime = "";
//class CountDownTimer extends StatefulWidget {
//  CountDownTimer(
//      {Key key})
//      : super(key: key);
//
//
//  @override
//  _CountDownTimerState createState() => new _CountDownTimerState();
//}
//
//class _CountDownTimerState extends State<CountDownTimer> {
//  var sub;
//
//  List<String> widgetList = ['00', '00', '00'];
//  var currentTime;
//  bool flatAll, flatSlot0;
//
//  @override
//  void initState() {
//    super.initState();
//    print("Nhay vao InitState");
//    flatAll = false;
//    flatSlot0 = false;
//  }
//
//  @override
//  void dispose() {
//    super.dispose();
//    sub.cancel();
//    print("Nhay vao dispose");
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    this.readTimestamp();
////    this.readTimesSlot0();
//    return new Container(
////      height: AssetsDimen.heightContainerCountDown,
////      child: new Row(
////        mainAxisAlignment: MainAxisAlignment.center,
////        children: <Widget>[
//////          this.widget_list_category(context),
////          this.widget_timer_contain(context),
////        ],
////      ),
//    );
//  }
//
//  @override
//  void didUpdateWidget(oldWidget) {
//    super.didUpdateWidget(oldWidget);
//  }
//
//  void createCountDown(Duration d) {
//    if (sub == null) {
//      CountDown cd = new CountDown(
//        d,
//        refresh: new Duration(seconds: 1),
//      );
//      sub = cd.stream.listen(null);
//
//      sub.onData((Duration d) {
//        int server = int.tryParse(serverTime) ?? 0;
//        serverTime = '${server + 1}';
//
//        setState(() {
//          var strListTimer = this.handleTimerRefresh(d);
//          widgetList = strListTimer;
//        });
//      });
//
//      sub.onDone(() {
//        sub = null;
//        widget.onDoneTimer();
//        readTimestamp();
//      });
//    }
//  }
//
//  void createCountDownSlot0(Duration d) {
//    if (globalTimerStream == null) {
//      CountDown cd = new CountDown(
//        d,
//        refresh: new Duration(seconds: 1),
//      );
//      globalTimerStream = cd.stream.listen(null);
//
//      globalTimerStream.onData((Duration d) {
//        int server = int.tryParse(serverTime) ?? 0;
//        serverTime = '${server + 1}';
//      });
//
//      globalTimerStream.onDone(() {
//        widget.onDoneTimer();
//        readTimesSlot0();
//      });
//    }
//  }
//
//  void readTimesSlot0() {
//    int timeStampTemp = 0;
//
//    timeStampTemp =
//        ((widget.session.currentTime + widget.session.waitTime) * 1000) ?? 0;
////    //FIXME test
////    timeStampTemp = ((widget.session.currentTime + 10) * 1000) ?? 0;
//
//    var date = new DateTime.fromMillisecondsSinceEpoch(timeStampTemp);
//    var diff = date.difference(DateTime.fromMillisecondsSinceEpoch(
//        DateTime.now().millisecondsSinceEpoch - widget.timeSync));
//
//    this.createCountDownSlot0(diff);
//  }
//
//  void readTimestamp() {
//    int timeStampTemp = 0;
////    if (widget.session.currentTime * 1000 <
////        DateTime.parse(widget.slots.slot).millisecondsSinceEpoch) {
////      timeStampTemp =
////          DateTime.parse(widget.slots.slot).millisecondsSinceEpoch ?? 0;
////    } else {
////      //selling
////      timeStampTemp =
////          ((widget.session.currentTime + widget.session.slots[0].waitTime) * 1000) ?? 0;
////    }
//    var date = new DateTime.fromMillisecondsSinceEpoch(timeStampTemp);
//    var diff = date.difference(DateTime.fromMillisecondsSinceEpoch(
//        DateTime.now().millisecondsSinceEpoch));
//    var strListTimer = this.handleTimerRefresh(diff);
//    widgetList[0] = '${strListTimer[0]}';
//    widgetList[1] = '${strListTimer[1]}';
//    widgetList[2] = '${strListTimer[2]}';
//
//    this.createCountDown(diff);
//  }
//
//  List<String> handleTimerRefresh(Duration d) {
//    var strDuration = d.toString().split(':');
//
//    //get second
//    var second = strDuration[2].split('.')[0];
//    var hours = strDuration[0];
//    var minutes = strDuration[1];
//
//    var numberHours = int.tryParse(hours);
//
//    //Check Hour
//    if (numberHours < 10) {
//      hours = '0${numberHours}';
//    } else {
//      hours = '${numberHours}';
//    }
//
//    return [hours, minutes, second];
//  }
//
//  //Widget Category
//  Widget widget_list_category(BuildContext context) {
//    return new Container(
//      width: 0.0,
//    );
//  }
//
//  //Widget Timer Count Down (Right)
//  Widget widget_timer_contain(BuildContext context) {
//    return new Container(
//        padding: EdgeInsets.only(
//            right: AssetsDimen.rightPaddingTimerCotain,
//            left: AssetsDimen.leftPaddingTimerCotain),
//        color: AssetsColor.transparent,
//        child: new Container(
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: this.containTimer(context, widgetList),
//          ),
//        ));
//  }
//
//  List<Widget> containTimer(BuildContext context, List<String> list) {
//    List<Widget> listWidget = List<Widget>();
//
//    //Title for Contain Count Down Timer...
//    listWidget.add(this.textForTimer(context));
//    for (int i = 0; i < list.length; i++) {
//      //add count down timer
//      listWidget.add(this.widget_contain(context, list[i]));
//      if (i < list.length - 1) {
//        //add two dots between contain...
//        listWidget.add(this.widget_two_dots(context));
//      }
//    }
//    return listWidget;
//  }
//
//  //Contain for timer
//  Widget widget_contain(BuildContext context, String value) {
//    return new Row(
//      children: <Widget>[
//        new Container(
//            width: AssetsDimen.widthContainCountDown,
//            height: AssetsDimen.heightContainCountDown,
//            decoration: BoxDecoration(
//                color: widget.tabResource.primaryColor,
//                borderRadius: BorderRadius.circular(
//                    AssetsDimen.borderRadiusContainCountDown)),
//            child: Center(
//              child: new ScalelessText(
//                value,
//                style: new TextStyle(
//                    fontSize: AssetsDimen.fontSizeNormal,
//                    color: AssetsColor.white,
//                    fontWeight: FontWeight.w500),
//                textAlign: TextAlign.center,
//              ),
//            )),
//      ],
//    );
//  }
//
//  //Contain two dots
//  Widget widget_two_dots(BuildContext context) {
//    return new Container(
//      width: AssetsDimen.widthContainerTwoDot,
//      alignment: Alignment.center,
//      child: new ScalelessText(
//        AssetsString.twoDot,
//        style: new TextStyle(
//            fontSize: AssetsDimen.fontSizeMedium, color: AssetsColor.black),
//      ),
//    );
//  }
//
//  //Title For Timer CountDown
//  Widget textForTimer(BuildContext context) {
//    String strTitle = '';
//    if (widget.session.currentTime * 1000 <
//        DateTime.parse(widget.slots.slot).millisecondsSinceEpoch) {
//      strTitle = AssetsString.beginCountDown;
//    } else {
//      //selling
//      strTitle = AssetsString.endCountDown;
//    }
//
//    return new Container(
//      padding: EdgeInsets.only(right: AssetsDimen.pading8),
//      child: new ScalelessText(
//        strTitle,
//        style: new TextStyle(
//            fontFamily: 'Roboto',
//            fontSize: AssetsDimen.fontSizeNormal,
//            color: AssetsColor.titleCountDown),
//      ),
//    );
//  }
//}
