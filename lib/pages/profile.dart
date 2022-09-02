import 'package:flutter/material.dart';
import 'plate.dart';
import 'TextCard.dart';
class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Plate> list= [
    Plate(title: 'Student Name',text: 'SNEHA PRASAD'),
    Plate(title: 'Student ID',text: '2021UCS1703'),
    Plate(title: 'Date of Birth',text: '23 MAY 2003'),
    Plate(title: 'Branch',text: 'COMPUTER SCIENCE AND ENGG'),
    Plate(title: 'Gender',text: 'Female'),
    Plate(title: 'Degree',text: 'Btech'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('PROFILE'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: list.map((textcard) => TextCard(textcard: textcard)).toList(),
        ),
      ),
    );
  }
}
