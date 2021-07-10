import 'dart:ui';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider_by_livdev/app/notifer/user_provider.dart';
import 'package:provider/provider.dart';

class UserDetainScreen extends StatefulWidget {
  static const String route = '/user_detail';
  const UserDetainScreen({Key? key}) : super(key: key);

  @override
  _UserDetainScreenState createState() => _UserDetainScreenState();
}

class _UserDetainScreenState extends State<UserDetainScreen> {
  @override
  Widget build(BuildContext context) {
    final userProviderData = context.watch<UserProvider>();
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
                    userProviderData.githubDataUserDetail.avatarUrl),
              ),
              title: Text(
                userProviderData.githubDataUserDetail.login,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              subtitle: Text(
                userProviderData.githubDataUserDetail.bio,
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
                        "${userProviderData.githubDataUserDetail.followers} Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${userProviderData.githubDataUserDetail.following} Following",
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
