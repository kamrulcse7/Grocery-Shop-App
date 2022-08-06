import 'package:flutter/material.dart';
import 'package:grocery_shop_app/components/data/data.dart';
import 'package:grocery_shop_app/components/models/categories.dart';

class CategoriesSectionHome extends StatelessWidget {
  const CategoriesSectionHome({
    Key? key,
  }) : super(key: key);

  categoryList(BuildContext context, Category category) {
    return Container(
      padding: const EdgeInsets.fromLTRB(02.0, 05.0, 10.0, 05.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.black26)],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.30,
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/categories/${category.imgUrl}"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Color(0xFFfe5722),
                    child: Text(
                      "${category.name}",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
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
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  Category category = categories[index];
                  return categoryList(context, category);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
