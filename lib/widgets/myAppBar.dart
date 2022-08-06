import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(right: 20.0),
              //   child: Icon(Icons.arrow_back_ios_rounded),
              // ),
              Text(
                "Hand picked fresh \nitems only for you!",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Spacer(),
              Icon(
                Icons.notifications_none_outlined,
                size: 30.0,
              ),
              Switch(
                value: isChecked,
                onChanged: (bool value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          TextFormField(
            // obscureText: _isObscure,
            // controller: textcontroller,
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: Color(0xFF9c9c9d),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 10.0),
                child: Icon(
                  Icons.search_rounded,
                  color: Color(0xFF9c9c9d),
                  size: 32.0,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Colors.black54,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
