import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'plate.dart';
import 'TextCard.dart';
class TimeTable extends StatefulWidget {
  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<Plate> Sublist= [
    Plate(title: '9-10',text: 'CAO'),
    Plate(title: '10-11',text: 'MM'),
    Plate(title: '12-1',text: 'DAA'),
    Plate(title: '3-4',text: 'DBMS'),
    Plate(title: '4-5',text: 'WT'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[100],
      appBar: AppBar(
        title: Text('MY TIMETABLE'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 20.0),

                //MONDAY
                OpenContainer(
                    openColor: Colors.pinkAccent,
                    transitionDuration: Duration(seconds: 1),
                    transitionType:
                        ContainerTransitionType.fadeThrough,
                    closedBuilder: (context,action) {
                          return Image.asset(
                              'images/MON.jpg',
                              height: 150.0,
                              width: 150.0,
                          );
                          },
                    openBuilder: (context,action){
                        return SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  SizedBox(height: 80.0),
                                  Column(
                                       children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                                   ),
                              ],
                              ),
                            ),
                        );
                    }
                ),

                SizedBox(width: 40.0),

                //TUESDAY
                OpenContainer(
                    openColor: Colors.pinkAccent,
                    transitionDuration: Duration(seconds: 1),
                    transitionType:
                    ContainerTransitionType.fadeThrough,
                    closedBuilder: (context,action) {
                      return Image.asset(
                        'images/tue.jpg',
                        height: 150.0,
                        width: 150.0,
                      );
                    },
                    openBuilder: (context,action){
                      return SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(height: 80.0),
                              Column(
                                children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),

              ]
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 20.0),

                //WED
                OpenContainer(
                    openColor: Colors.pinkAccent,
                    transitionDuration: Duration(seconds: 1),
                    transitionType:
                    ContainerTransitionType.fadeThrough,
                    closedBuilder: (context,action) {
                      return Image.asset(
                        'images/Wed.jpg',
                        height: 150.0,
                        width: 150.0,
                      );
                    },
                    openBuilder: (context,action){
                      return SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(height: 80.0),
                              Column(
                                children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
                SizedBox(width: 40.0),

                //THURSDAY
                OpenContainer(
                    openColor: Colors.pinkAccent,
                    transitionDuration: Duration(seconds: 1),
                    transitionType:
                    ContainerTransitionType.fadeThrough,
                    closedBuilder: (context,action) {
                      return Image.asset(
                        'images/thu.jpg',
                        height: 150.0,
                        width: 150.0,
                      );
                    },
                    openBuilder: (context,action){
                      return SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(height: 80.0),
                              Column(
                                children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ]
            ),
            SizedBox(height: 40.0),
            Row(
                children: [
                  SizedBox(width: 20.0),

                  //FRIDAY
                  OpenContainer(
                      openColor: Colors.pinkAccent,
                      transitionDuration: Duration(seconds: 1),
                      transitionType:
                      ContainerTransitionType.fadeThrough,
                      closedBuilder: (context,action) {
                        return Image.asset(
                          'images/FRI.jpg',
                          height: 150.0,
                          width: 150.0,
                        );
                      },
                      openBuilder: (context,action){
                        return SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                SizedBox(height: 80.0),
                                Column(
                                  children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                  SizedBox(width: 40.0),

                  //SATURDAY
                  OpenContainer(
                      openColor: Colors.pinkAccent,
                      transitionDuration: Duration(seconds: 1),
                      transitionType:
                      ContainerTransitionType.fadeThrough,
                      closedBuilder: (context,action) {
                        return Image.asset(
                          'images/SAT.jpg',
                          height: 150.0,
                          width: 150.0,
                        );
                      },
                      openBuilder: (context,action){
                        return SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                SizedBox(height: 80.0),
                                Column(
                                  children: Sublist.map((subcard) => TextCard(textcard: subcard)).toList(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ]
            ),
          ],
        ),
      )

    );
  }
}
