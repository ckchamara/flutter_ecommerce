import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catagoryModel.dart';
import 'package:flutter_ecommerce/screens/homeScreen.dart';
import 'package:flutter_ecommerce/widgets/custom_appbar.dart';
import 'package:flutter_ecommerce/widgets/custom_navbar.dart';
import 'package:flutter_ecommerce/widgets/hero_crousel_card.dart';
import 'package:flutter_ecommerce/widgets/section_title_homePage.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Zero to Unicorn'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Catagory.catagories
                    .map((catagory) => HeroCarouselCards(catagory: catagory))
                    .toList(),
              )),
          SectionTitle(title: 'RECOMMEND')
        ],
      ),
    );
  }
}


