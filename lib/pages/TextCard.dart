import 'package:flutter/material.dart';
import 'plate.dart';
class TextCard extends StatelessWidget {
  final Plate textcard;
  TextCard({required this.textcard});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Colors.lime[100],
      shadowColor: Colors.grey[900],
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  textcard.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 10.0),
              Text(
                  textcard.text,
                  style: TextStyle(
                    fontSize: 18.0,
                  )
              )
            ]
        ),
      ),
    );
  }
}
