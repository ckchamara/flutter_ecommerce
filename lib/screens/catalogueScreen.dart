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
        settings: const RouteSettings(name: routeName),
        builder: (_) => CatalogueScreen(catagory: catagory));
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> catagoryProducts = Product.products
        .where((prod) => prod.catagory == catagory.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBar(title: catagory.name),
        bottomNavigationBar: CustomNavBar(),
        body: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemCount: catagoryProducts.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: ProductCard(
                product: catagoryProducts[index],
                widthFactor: 2.2,
              ));
            })

        // ProductCard(product: Product.products[1]),
        );
  }
}
