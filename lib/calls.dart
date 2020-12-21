import 'package:flutter/material.dart';
import 'dart:math';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  //close contacts list
  List<String> contacts = [
    "Eilie Billish",
    "Zark Muckberg",
    "Kan Joum",
    "Sevin Kystrom",
    "Yang Zhiming",
    "Woni Tatson",
    "Cack Jonte"
  ];

  //image locations
  List<String> images = [
    "images/billie.png",
    "images/mark.jpg",
    "images/jan.jpg",
    "images/kevin.jpg",
    "images/zhang.jpg",
    "images/toni.jpg",
    "images/jack.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  // Profile image
                  leading: SizedBox(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(images[index]),
                    ),
                  ),
                  // Contact name
                  title: Text(
                    contacts[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // Last called time
                  subtitle: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.call_made_rounded,
                          size: 18,
                        ),
                      ),
                      Text((Random().nextInt(10) + 1).toString() +
                          " minutes ago"),
                    ],
                  ),
                  trailing: Icon(Icons.call),
                ),
                Divider(
                  indent: 90,
                  height: 5,
                )
              ],
            );
          }),
    );
  }
}
