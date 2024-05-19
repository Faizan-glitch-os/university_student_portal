import 'package:flutter/material.dart';

import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'list_of_screens.dart';

class AppScreen extends StatefulWidget {
  AppScreen({super.key, required this.title});

  final String title;

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  String text = 'before';
  int _selectedIndex = 0;

  Future<void> _handleRefresh() async {
    Future.delayed(
      const Duration(seconds: 3),
    );
    selectDegree.clear();
    selectProgram.clear();
    semester.clear();
    rollNo.clear();
    selectDocument.clear();
    name.clear();
    sonOrDaughter.clear();
    cnic.clear();
    phoneNo.clear();
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
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(64, 165, 120, 1),
              Color.fromRGBO(157, 222, 139, 1),
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
        ),
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        elevation: 0,
      ),
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        height: 100,
        backgroundColor: const Color.fromRGBO(230, 255, 148, 1),
        color: Colors.lightGreen,
        showChildOpacityTransition: false,
        borderWidth: 5,
        animSpeedFactor: 2,
        springAnimationDurationInMilliseconds: 800,
        child: ListView(
          children: [
            Container(
              height: deviceHeight - 200,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(64, 165, 120, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: listOfScreens[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(64, 165, 120, 1),
              Color.fromRGBO(157, 222, 139, 1),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        width: deviceWidth,
        child: GNav(
          selectedIndex: _selectedIndex,
          onTabChange: _navigateBottomBar,
          gap: 5,
          tabBorderRadius: 10,
          curve: Curves.bounceIn,
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
          activeColor: Colors.white,
          tabBackgroundColor: const Color.fromRGBO(64, 165, 120, 1),
          tabs: const [
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
