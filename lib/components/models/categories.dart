import 'package:grocery_shop_app/components/models/product.dart';

class Category {
  final String? name;
  final String? imgUrl;
  final List<Product>? Products;
  
  Category({
    this.name,
    this.imgUrl,
    this.Products,
  });
}
