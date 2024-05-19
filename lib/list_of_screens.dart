import 'package:flutter/material.dart';

import 'news.dart';

List<Widget> listOfScreens = [
  ListView.builder(
    itemCount: latestNews.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          latestNews[index],
          style: TextStyle(fontSize: 20),
        ),
      );
    },
  ),
  ListView.builder(
    itemCount: scholarships.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          scholarships[index],
          style: TextStyle(fontSize: 20),
        ),
      );
    },
  ),
];

class screens extends StatefulWidget {
  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
