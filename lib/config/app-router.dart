import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catagoryModel.dart';
import 'package:flutter_ecommerce/models/product_model.dart';
import 'package:flutter_ecommerce/screens/catalogueScreen.dart';
import 'package:flutter_ecommerce/screens/homeScreen.dart';
import 'package:flutter_ecommerce/screens/cartScreen.dart';
import 'package:flutter_ecommerce/screens/productScreen.dart';
import 'package:flutter_ecommerce/screens/userScreen.dart';
import 'package:flutter_ecommerce/screens/wishlistScreen.dart';

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
      case '/catalogue':
        return CatalogueScreen.route(catagory: routeSettings.arguments as Catagory);
      case '/product':
        return ProductScreen.route(product: routeSettings.arguments as Product);
      case '/wishlist':
        return WishlistScreen.route();

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
