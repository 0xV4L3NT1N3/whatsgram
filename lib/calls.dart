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
                  leading: Icon(Icons.person),
                  title: Text(
                    'Xi JinPing',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('3 minutes ago'),
                  trailing: Icon(Icons.call),
                ),
                Divider(
                  indent: 70,
                  height: 5,
                )
              ],
            );
          }),
    );
  }
}
