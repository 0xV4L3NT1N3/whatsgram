import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // close contacts list
  List<String> contacts = [
    "Eilie Billish",
    "Zark Muckberg",
    "Kan Joum",
    "Sevin Kystrom",
    "Yang Zhiming",
    "Woni Tatson",
    "Cack Jonte"
  ];

  // image locations
  List<String> images = [
    "images/billie.png",
    "images/mark.jpg",
    "images/jan.jpg",
    "images/kevin.jpg",
    "images/zhang.jpg",
    "images/toni.jpg",
    "images/jack.jpg",
  ];

  // chat text
  List<String> chat = [
    "I'm the bad guy",
    "Should we buy TikTok ?",
    "I shouldn't have sold",
    "Alls well that ends well",
    "I'm not sure what his intentions are",
    "Now i beg to see you dance just one more time",
    "Link is in the description",
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    //Layering Circle Avatars to achieve the gradient bordered stories
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.grey[50],
                        child: CircleAvatar(
                          radius: 31,
                          child: Icon(
                            Icons.group_add_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        'Pinned Contacts',
                        style: TextStyle(fontSize: 11),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),

              //Close Contacts stories
              Expanded(
                child: ListView.builder(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: contacts.length,
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
                                  backgroundImage: AssetImage(images[index]),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 80,
                            child: Center(
                              child: Text(
                                contacts[index],
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
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(images[index]),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          contacts[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 8.0),
                        child: Text(chat[index]),
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
                                child: Text(
                                    (Random().nextInt(6) + 1).toString(),
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
