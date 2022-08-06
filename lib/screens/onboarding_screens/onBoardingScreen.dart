import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../login/loginScreen.dart';
import '../signup/signUpScreen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        rawPages: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/images/obs1.png",
                    width: screenWidth * 0.80,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "To",
                          style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          "Groceryus",
                          style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "15000+ Grocery item available",
                          style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "only for you",
                          style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/images/obs2.png",
                    width: screenWidth * 0.80,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Fast Delivery",
                          style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "very fast same-day delivery and",
                          style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "custom delivery system",
                          style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/images/obs3.png",
                    width: screenWidth * 0.80,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Customer Support",
                          style: TextStyle(
                            fontSize: screenHeight * 0.05,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "24/7 Customer Suppoert",
                          style: TextStyle(
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        done: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            "Start",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        onDone: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUpScreen())),
        showSkipButton: true,
        skip: Text('Skip'),
        onSkip: ()=> Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LogInScreen())),
        next: Icon(Icons.arrow_forward),
        onChange: (index) => print('Page $index selected'),
        nextFlex: 0,
        skipOrBackFlex: 0,
        animationDuration: 500,
        dotsDecorator: DotsDecorator(
          color: Color(0xffBDBDBD),
          size: Size(12.0, 12.0),
          activeSize: Size(30.0, 12.0),
          activeColor: Colors.deepOrange,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
