import 'package:flutter/material.dart';

import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'news.dart';
import 'list_of_screens.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = 'before';
  int _selectedIndex = 0;

  Future<void> _handleRefresh() async {
    Future.delayed(
      Duration(seconds: 3),
    );
  }

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
        elevation: 0,
      ),
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        height: 100,
        backgroundColor: Colors.purple[300],
        color: Theme.of(context).colorScheme.inversePrimary,
        showChildOpacityTransition: false,
        borderWidth: 5,
        animSpeedFactor: 2,
        springAnimationDurationInMilliseconds: 800,
        child: ListView(
          children: [
            Container(
              height: deviceHeight - 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
              decoration: BoxDecoration(color: Colors.purple[300]),
              child: listOfScreens[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.inversePrimary,
            Colors.purple
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        padding: EdgeInsets.all(10),
        width: deviceWidth,
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _navigateBottomBar,
          gap: 5,
          tabBorderRadius: 20,
          tabShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.inversePrimary,
                blurRadius: 15)
          ],
          curve: Curves.bounceIn,
          padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
          activeColor: Colors.black,
          tabBackgroundGradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft),
          tabs: [
            GButton(
              icon: Icons.timelapse_rounded,
              text: 'Latest News',
            ),
            GButton(
              icon: Icons.timelapse_rounded,
              text: 'Scholarships',
            ),
            GButton(
              icon: Icons.timelapse_rounded,
              text: 'Renewal Slip',
            ),
            GButton(
              icon: Icons.timelapse_rounded,
              text: 'Deposit Slips',
            ),
          ],
        ),
      ),
    );
  }
}
