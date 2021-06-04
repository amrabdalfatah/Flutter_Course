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
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    'https://www.thoughtco.com/thmb/mik7Z00SAYN786BQbieXWOzZmc8=/2121x1414/filters:fill(auto,1)/lotus-flower-828457262-5c6334b646e0fb0001dcd75a.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
