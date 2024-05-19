import 'dart:async';

import 'package:flutter/material.dart';

import 'app_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AppScreen(
              title: 'Student Portal',
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(157, 222, 139, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Student Portal')],
          ),
        ));
  }
}
