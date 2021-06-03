import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   leading: Icon(
      //     Icons.menu,
      //   ),
      //   title: Text(
      //     'First App',
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         Icons.notification_important,
      //       ),
      //       onPressed: () {
      //         print('Icon Notification Clicked');
      //       },
      //     ),
      //     IconButton(
      //       icon: Icon(
      //         Icons.search,
      //       ),
      //       onPressed: () {
      //         print('Search is clicked');
      //       },
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Text('Hello Flutter'),
      ),
    );
  }
}
