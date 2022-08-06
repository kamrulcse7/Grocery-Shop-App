import 'package:flutter/material.dart';
// import 'package:grocery_shop_app/theme/myTheme.dart';

import 'screens/onboarding_screens/onBoardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      // theme: MyTheme.lightTheme,
      // darkTheme: MyTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
