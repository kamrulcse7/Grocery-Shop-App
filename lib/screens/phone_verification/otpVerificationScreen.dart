import 'package:flutter/material.dart';

import '../splashScreen.dart';


class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          padding: const EdgeInsets.all(16.0),
          color: Color(0xFFFFF9C4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 40.0,
                child: Icon(
                  Icons.verified_outlined,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "OTP VERIFICATION",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Please Enter OTP",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                decoration: InputDecoration(
                  hintText: "Enter Your OTP",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
                child: Text("Verify"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
