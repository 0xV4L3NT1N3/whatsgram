import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
    return Expanded(
      child: ListView.builder(
          itemCount: items.length,
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
                      backgroundImage: AssetImage('images/chatphoto.png'),
                    ),
                  ),
                  // Contact name
                  title: Text(
                    'Xi JinPing',
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
                      Text('3 minutes ago'),
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
