import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Profile picture
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircleAvatar(
            radius: 80,
          ),
        ),
        //Preferences
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Joe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('3 minutes ago'),
              trailing: Icon(Icons.edit),
            ),
            Divider(
              indent: 70,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Doge is your best bet !'),
              trailing: Icon(Icons.edit),
            ),
            Divider(
              indent: 70,
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text(
                'Phone',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('3 minutes ago'),
            ),
            Divider(
              indent: 70,
              height: 5,
            )
          ],
        ),
      ],
    );
  }
}
