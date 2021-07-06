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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.009,
            ),
            ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                // radius: width * 0.06,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              title: Text(
                "data",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              subtitle: Text(
                "data",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: width * (0.9 + 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "20 Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "20 Following",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Repositories",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
