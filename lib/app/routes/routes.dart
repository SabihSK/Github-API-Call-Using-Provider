import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_by_livdev/ui/view/homeScreen.dart';
import 'package:provider_by_livdev/ui/view/user_detail_screen.dart';

class AppRoutes {
  String route;
  AppRoutes(this.route);

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.route:
        return _buildRoute(HomeScreen(), settings);
      case UserDetainScreen.route:
        return _buildRoute(UserDetainScreen(), settings);

      default:
        return _buildRoute(Scaffold(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}












// import 'package:provider_by_livdev/ui/view/homeScreen.dart';

// getRoutes() {
//   return {
//     HomeScreen.route: (context) => HomeScreen(),
//   };
// }
