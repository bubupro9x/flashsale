import 'package:flutter/material.dart';

class SilverAppBarWithTabBarScreen extends StatefulWidget {
  @override
  _SilverAppBarWithTabBarState createState() => _SilverAppBarWithTabBarState();
}

class _SilverAppBarWithTabBarState extends State<SilverAppBarWithTabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            title: Text("Silver AppBar With ToolBar"),
            expandedHeight: 160.0,
            bottom: new TabBar(
              tabs: [
                new Tab(text: 'Tab 1'),
                new Tab(text: 'Tab 2'),
                new Tab(text: 'Tab 3'),
              ],
              controller: controller,
            ),
          ),
          new SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                NotificationListener<ScrollNotification>(
                  child: Draggable(
                      child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return Text('Item $index',
                              style: TextStyle(fontSize: 30.0));
                        },
                      ),
                      feedback: Container(color: Colors.white,
                      height: 100.0,width: 100.0,)),
                  onNotification: (ScrollNotification scrollInfo) {
                    if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                      print("load nhe ahihi");
                    }
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
