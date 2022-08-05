import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/signup.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.amber,
                  width: screenWidth,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome To \nRegistration Page",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "please write to correct information",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                          height: 50.0,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Expanded(
                              //   // flex: 1,
                              //   child: Container(
                              //     child: Container(
                              //       height: 50.0,
                              //       width: 20.0,
                              //       color: Colors.deepOrange,
                              //       child: Icon(Icons.email),
                              //     ),
                              //   ),
                              // ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              Expanded(
                                // flex: 4,
                                child: TextField(),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
