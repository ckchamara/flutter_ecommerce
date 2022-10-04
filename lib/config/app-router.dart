import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/homeScreen.dart';
import 'package:flutter_ecommerce/screens/cartScreen.dart';
import 'package:flutter_ecommerce/screens/userScreen.dart';

class AppRouter {
  static Route? onGeneratedRoute(RouteSettings routeSettings) {
    print('this is route:  ${routeSettings.name}');

    switch (routeSettings.name) {
      case '/':
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/user':
        return UserScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
                appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('error'),
            )));
  }
}
