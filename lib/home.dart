import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //close contacts list
  List<String> items = [
    "longlonglonglongevenlongertext",
    "simpson",
    "and",
    "friends",
    "with",
    "beer",
    "buddies"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10, left: 10, right: 10, bottom: 5),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.brown.shade800,
                              child: Text(items[2]),
                            ),
                          ),
                          Container(
                            width: 70,
                            child: Center(
                              child: Text(
                                items[4],
                                style: TextStyle(fontSize: 11),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
        Center(child: Text('Hello World')),
      ],
    );
  }
}
