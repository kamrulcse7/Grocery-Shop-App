import 'package:flutter/material.dart';
import 'package:grocery_shop_app/components/data/data.dart';
import 'package:grocery_shop_app/components/models/product.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({
    Key? key,
  }) : super(key: key);
  _product(BuildContext context, Product product) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -40,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(blurRadius: 8.0, color: Colors.black45)
                  ]),
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage:
                    AssetImage("assets/images/products/${product.imgUrl}"),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 0,
            left: 0,
            child: Center(
              child: Text(
                "${product.name}",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
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
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.90,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              Product product = popular_products[index];
              return _product(context, product);
            },
          ),
        ],
      ),
    );
  }
}
