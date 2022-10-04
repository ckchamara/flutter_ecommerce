import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName), builder: (_) => ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
