import 'package:flutter/material.dart';
import 'plate.dart';
import 'TextCard.dart';

class Attendance extends StatefulWidget {
  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<Plate> Sublist= [
    Plate(title: 'Computer Architecture',text: '89 %'),
    Plate(title: 'Microprocessors',text: '95 %'),
    Plate(title: 'Design and Analysis of Algo',text: '86 %'),
    Plate(title: 'Web Technology',text: '75 %'),
    Plate(title: 'Database Management Systems',text: '90 %'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Text('MY ATTENDANCE'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/nsutlogo.jpg'),
              radius:50.0,
            ),
            Column(
            children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
            ),
        ]
        ),
      ),
    );
  }
}
