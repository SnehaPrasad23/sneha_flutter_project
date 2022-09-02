import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/timetable.dart';
import 'pages/attendance.dart';


void main() => runApp(MaterialApp(

  routes: {
    '/': (context) => Home(),
    '/profile': (context) => Profile(),
    '/timetable': (context) => TimeTable(),
    '/attendance': (context) => Attendance(),
  },
));
