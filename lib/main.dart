import 'package:flutter/material.dart';
import 'package:Whatsgram/home.dart';
import 'package:Whatsgram/calls.dart';
import 'package:Whatsgram/profile.dart';

void main() {
  runApp(Whatsgram());
}

class Whatsgram extends StatefulWidget {
  @override
  _WhatsgramState createState() => _WhatsgramState();
}

class _WhatsgramState extends State<Whatsgram> {
  @override
  int currentIndex = 0;
  PageController _pageController = PageController();

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
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            _pageController.jumpToPage(value);
          },
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
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          children: [
            Home(),
            Calls(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
