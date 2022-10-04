import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Zero to Unicorn',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
