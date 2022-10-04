import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';

class CatalogueScreen extends StatelessWidget {
  static const String routeName = '/catalogue';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName), builder: (_) => CatalogueScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Catalogue'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
