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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: Text(
              'Whatsgram',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.chat,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}
