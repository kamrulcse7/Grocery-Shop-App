import 'package:flutter/material.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 300.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Deals',
                style: TextStyle(
                  fontSize: 22.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
