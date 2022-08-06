import 'package:flutter/material.dart';

import '../../widgets/CustomTextField.dart';
import '../phone_verification/phoneNumberScreen.dart';
import '../signup/signUpScreen.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              colors: [
                Color(0xFF43A047),
                Color(0xFFB0BEC5),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    "LogIn",
                    style: TextStyle(
                      fontSize: screenWidth * 0.12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(12.0, 26.0, 12.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome To LogIN\nPage",
                          style: TextStyle(
                            fontSize: screenHeight * 0.04,
                            fontWeight: FontWeight.w600,
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
                            fontSize: screenHeight * 0.03,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CustomTextField(
                          obscureText: false,
                          textcontroller: _email,
                          hint: "Enter Your Email",
                          prefix: Icons.email_outlined,
                        ),
                        CustomTextField(
                          obscureText: !_passwordVisible,
                          textcontroller: _password,
                          hint: "Enter Password",
                          prefix: Icons.lock,
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            icon: Icon(
                              _passwordVisible == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black38,
                              size: 22.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => PhoneNumberScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(6.0)),
                                child: Text(
                                  "LogIn",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                    return SignUpScreen();
                                  }),
                                );
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
