import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName), builder: (_) => WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
