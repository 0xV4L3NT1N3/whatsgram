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
              Column(
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
                    width: 80,
                    child: Center(
                      child: Text(
                        'Close Contacts',
                        style: TextStyle(fontSize: 11),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
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
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('images/chatphoto.png'),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Eilie Billish',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 8.0),
                        child: Text('Should we try a different vaccine'),
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '12:23 am',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: Center(
                                child: Text('12',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10))),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      indent: 90,
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
