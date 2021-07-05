// import 'dart:ui';

import 'package:flutter/material.dart';

class UserDetainScreen extends StatefulWidget {
  static const String route = '/user_detail';
  const UserDetainScreen({Key? key}) : super(key: key);

  @override
  _UserDetainScreenState createState() => _UserDetainScreenState();
}

class _UserDetainScreenState extends State<UserDetainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            ListTile(
              // isThreeLine: true,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              title: Text(
                "data",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
