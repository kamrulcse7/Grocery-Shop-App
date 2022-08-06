import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/widgets/carouselSlider.dart';
import 'package:grocery_shop_app/pages/widgets/categoriesSectionHome.dart';
import 'package:grocery_shop_app/pages/widgets/popularDeals.dart';

import '../widgets/myAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final text = MediaQuery.of(context).platformBrightness == Brightness.dark ? 'DarkTheme' : 'LightTheme';
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFe6f2ff),
        body: Container(
          height: size.height,
          width: size.width,
          child: ListView(
            children: [
              MyAppBar(),
              CategoriesSectionHome(),
              ImageSlider(),
              PopularDeals(),
            ],
          ),
        ),
      ),
    );
  }
}
