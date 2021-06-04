import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: () {
              print('Icon Notification Clicked');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              print('Search is clicked');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text(
                'First Text',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text(
                'Second Text',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text(
                'Third Text',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text(
                'Fourth Text',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
