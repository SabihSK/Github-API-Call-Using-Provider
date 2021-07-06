import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_livdev/app/notifer/user_provider.dart';
import 'package:provider_by_livdev/app/routes/routes.dart';
import 'package:provider_by_livdev/ui/view/homeScreen.dart';
// import 'package:provider_by_livdev/ui/view/user_detail_screen.dart';
// import 'package:provider_by_livdev/ui/view/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: AppRoutes(HomeScreen.route).route,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
