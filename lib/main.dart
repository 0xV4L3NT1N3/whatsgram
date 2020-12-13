import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsgram',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '',
            style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.normal,
                fontFamily: 'Billabong'),
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert_rounded,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: Stack(
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
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    ),
  );
}
