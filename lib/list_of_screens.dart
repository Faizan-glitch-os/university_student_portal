import 'package:flutter/material.dart';

import 'news.dart';

final selectDegree = TextEditingController();
final selectProgram = TextEditingController();
final semester = TextEditingController();
final rollNo = TextEditingController();
final selectDocument = TextEditingController();
final name = TextEditingController();
final sonOrDaughter = TextEditingController();
final cnic = TextEditingController();
final phoneNo = TextEditingController();

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
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        controller: selectDegree,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select Degree',
          suffixIcon: IconButton(
            onPressed: () {
              selectDegree.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: selectProgram,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select Program',
          suffixIcon: IconButton(
            onPressed: () {
              selectProgram.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: semester,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Semester',
          suffixIcon: IconButton(
            onPressed: () {
              semester.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: rollNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Roll Number',
          suffixIcon: IconButton(
            onPressed: () {
              rollNo.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: () {
          print('Degree: $selectDegree');
          print('Program: $selectProgram');
          print('Semester: $semester');
          print('Roll Number: $rollNo');
        },
        child: Text('Submit'),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        controller: selectDegree,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select Degree',
          suffixIcon: IconButton(
            onPressed: () {
              selectDegree.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: selectProgram,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select Program',
          suffixIcon: IconButton(
            onPressed: () {
              selectProgram.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: semester,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Semester',
          suffixIcon: IconButton(
            onPressed: () {
              semester.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: rollNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Roll Number',
          suffixIcon: IconButton(
            onPressed: () {
              rollNo.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        controller: selectDocument,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Select Document',
          suffixIcon: IconButton(
            onPressed: () {
              selectDocument.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: name,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Name',
          suffixIcon: IconButton(
            onPressed: () {
              name.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: sonOrDaughter,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Son/Daughter of',
          suffixIcon: IconButton(
            onPressed: () {
              sonOrDaughter.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        controller: cnic,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'CNIC',
          suffixIcon: IconButton(
            onPressed: () {
              cnic.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        controller: phoneNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Phone Number',
          suffixIcon: IconButton(
            onPressed: () {
              phoneNo.clear();
            },
            icon: Icon(Icons.clear),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {
          print('Degree: $selectDegree');
          print('Program: $selectProgram');
          print('Semester: $semester');
          print('Roll Number: $rollNo');
          print('Document: $selectDocument');
          print('Name: $name');
          print('Son/Daughter of: $sonOrDaughter');
          print('CNIC: $cnic');
          print('Phone Number: $phoneNo');
        },
        child: Text('Submit'),
      ),
    ],
  ),
];
