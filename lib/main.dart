import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/app-router.dart';

// import 'package:flutter_ecommerce/config/app-router.dart';
import 'package:flutter_ecommerce/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGeneratedRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
