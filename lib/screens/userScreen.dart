import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = '/user';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName), builder: (_) => UserScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'User'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
