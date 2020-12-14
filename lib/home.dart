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
    return Column(
      children: [
        Container(
          height: 100,
          color: Colors.grey[50],
          child: Row(
            children: [
              //Close Contacts stories
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
                            //Layering Circle Avatars to achieve the gradient bordered stories
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 33,
                                backgroundColor: Colors.grey[50],
                                child: CircleAvatar(
                                  radius: 31,
                                  backgroundColor: Colors.brown.shade800,
                                  child: Text(items[2]),
                                ),
                              ),
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

        //Chat containers
        Expanded(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Xi JinPing'),
                      subtitle: Text('Should we try a different vaccine'),
                    ),
                    Divider(
                      indent: 70,
                      height: 5,
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
