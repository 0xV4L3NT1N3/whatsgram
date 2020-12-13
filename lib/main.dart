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
        body: Center(child: Text('Hello World')),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Business',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    ),
  );
}
