import 'dart:async';

import 'package:flutter/material.dart';

class ActorDetailScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:  NestedScrollView(
        body: TabBarView(
          children: <Widget>[
            _buildMoviesSection(),
            _buildMoviesSection(),
          ],
        ),
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) =>
        [_buildAppBar(context)],
      ),

    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      title: Text("Test"),
      leading: IconButton(icon: Icon(Icons.navigate_next), onPressed: null),
      expandedHeight: 180.0,
      bottom: TabBar(
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.movie),
          ),
          Tab(
            icon: Icon(Icons.tv),
          ),
        ],
      ),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('lib/assets/empty-background.png')
      ),
    );
  }

  Widget _buildMoviesSection() {
    return Container();
  }
}
