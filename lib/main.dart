import 'package:flutter/material.dart';
import 'profile.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsgram',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Whatsgram',
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
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: onButtonTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }

