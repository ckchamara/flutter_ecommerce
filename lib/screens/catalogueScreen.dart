import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catagoryModel.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';
import 'package:flutter_ecommerce/widgets/product_card.dart';

class CatalogueScreen extends StatelessWidget {
  static const String routeName = '/catalogue';
  final Catagory catagory;


   CatalogueScreen({required this.catagory});

  static route({required Catagory catagory}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName), builder: (_) => CatalogueScreen(catagory: catagory));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: catagory.name),
      bottomNavigationBar: CustomNavBar(),
      body: ProductCard(product: Product.products[1]),
    );
  }
}
