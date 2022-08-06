import 'package:flutter/material.dart';

import 'screens/onboarding_screens/onBoardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
