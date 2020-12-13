import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.brown.shade800,
                      child: Text('AH'),
                    ),
                  ),
                  Text(
                    'Close Contacts',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ),
        Center(child: Text('Hello World')),
      ],
    );
  }
}
