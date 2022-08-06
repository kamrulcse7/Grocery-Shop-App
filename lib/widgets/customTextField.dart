import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
     this.textcontroller,
    required this.hint,
    this.prefix,
    this.suffix,
    required this.obscureText,
  }) : super(key: key);

  final String hint;
  final TextEditingController? textcontroller;
  final IconButton? suffix;
  final IconData? prefix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  prefix,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              // flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: TextFormField(
                  obscureText: obscureText,
                  controller: textcontroller,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyle(color: Colors.black38),
                    suffix: suffix,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
