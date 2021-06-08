import 'package:flutter/material.dart';

import 'package:flutter_udemy_abdullah/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  // 1. Build Item
  // 2. Build List
  // 3. add item to list

  final List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Abdalfatah Mohamed',
      phone: '+201016716496',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ali',
      phone: '+201016716496',
    ),
    UserModel(
      id: 3,
      name: 'Mohamed Abdalfatah',
      phone: '+201016716496',
    ),
    UserModel(
      id: 4,
      name: 'Amr Abdalfatah',
      phone: '+201016716496',
    ),
    UserModel(
      id: 5,
      name: 'Ali Abdalfatah',
      phone: '+201016716496',
    ),
    UserModel(
      id: 6,
      name: 'Adel Abdalfatah',
      phone: '+201016716496',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            color: Colors.grey[500],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                user.id.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    user.name,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    user.phone,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
