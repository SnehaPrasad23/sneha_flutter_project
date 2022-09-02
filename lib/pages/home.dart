import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onSelected(BuildContext context,int item) {
    switch(item){
      case 0:
        Navigator.pushNamed(context,'/profile');
        break;
      case 1:
        Navigator.pushNamed(context,'/timetable');
        break;
      case 2:
        Navigator.pushNamed(context,'/attendance');
        break;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('SEMESTER-3'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
            ),
            child: PopupMenuButton<int>(
              color: Colors.amber[200],
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 0.5,
                          )
                      ),
                    ],
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text(
                        'Time Table',
                        style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 0.5,
                      )
                      ),
                    ],
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem<int>(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.start_outlined,color: Colors.black),
                      SizedBox(width: 5.0),
                      Text(
                        'Attendance',
                        style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          )
        ]
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              width: 400.0,
              color: Colors.greenAccent,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/girl1.jpg'),
                  radius: 60.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context,'/profile');
              },
              label: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                )
              ),
              icon: Icon(Icons.account_box_rounded),
              color: Colors.orange[100],
            ),
            SizedBox(height: 10.0),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context,'/timetable');
              },
              label: Text(
                'Time Table',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing:2.0,
                )
              ),
              icon: Icon(Icons.access_time_filled_rounded),
              color: Colors.orange[100],
            ),
            SizedBox(height: 10.0),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context,'/attendance');
              },
              label: Text(
                'Attendance',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                )
              ),
              icon: Icon(Icons.accessibility_new_sharp),
              color: Colors.orange[100],
            ),
            SizedBox(height: 20.0),
            Image.asset('images/nsut.jpeg'),
          ],
        ),
      ),
    );

  }
}
