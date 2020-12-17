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
          child: Stack(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/Profile.JPG'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110, left: 200.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  mini: true,
                  onPressed: () {},
                  child: Icon(Icons.camera_alt_rounded),
                ),
              ),
            ],
          ),
        ),
        //Preferences
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Joe'),
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
              subtitle: Text('+60 17269 0420'),
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
