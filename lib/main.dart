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
  var appBarIcon;
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsgram',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
                appBarIcon,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Colors.grey[50],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;

              //changing AppBar dynamically on different pages
              switch (currentIndex) {
                case 0:
                  {
                    appBarIcon = Icons.search;
                  }
                  break;
                case 1:
                  {
                    appBarIcon = Icons.add_call;
                  }
                  break;
                case 2:
                  {
                    appBarIcon = null;
                  }
              }
            });
          },
          children: [
            Home(),
            Calls(),
            Profile(),
          ],
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
      ),
    );
  }
}
