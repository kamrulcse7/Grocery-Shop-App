import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'otpVerificationScreen.dart';


class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'BD');
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
                backgroundColor: Colors.deepOrange,
                radius: 40.0,
                child: Icon(
                  Icons.near_me_sharp,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "VERIFY YOUR PHONE NUMBER",
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
                "Enter Phone Number",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w300,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                initialValue: number,
                textFieldController: controller,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputDecoration: InputDecoration(
                  hintText: "Phone Number",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => OTPVerificationScreen()),
                  );
                },
                child: Text("Send OTP"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
