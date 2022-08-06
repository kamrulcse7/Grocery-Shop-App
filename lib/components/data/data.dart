import 'package:grocery_shop_app/components/models/categories.dart';
import 'package:grocery_shop_app/components/models/product.dart';

// Beverage
final _coffee = Product(name: "Coffee", imgUrl: "coffee.jpg", price: 200);
final _juice = Product(name: "Juice", imgUrl: "juice.jpg", price: 120);
final _mocktails =
    Product(name: "Mocktails", imgUrl: "mockatails.jpg", price: 140);

// Bread/Bakery
final _sandwich = Product(name: "Sandwich", imgUrl: "sandwich.jpg", price: 12);
final _dinner_roll =
    Product(name: "Dinner Roll", imgUrl: "dinner_roll.jpg", price: 35);
final _bagels = Product(name: "Bagels", imgUrl: "bagels.jpg", price: 65);

// Dairy
final _cheeses = Product(name: "Cheeses", imgUrl: "cheeses.jpg", price: 45);
final _egg = Product(name: "Egg", imgUrl: "egg.jpg", price: 96);
final _milk = Product(name: "Milk", imgUrl: "milk.jpg", price: 63);
final _butter = Product(name: "Butter", imgUrl: "butter.jpg", price: 46);

// Meat
final _lunch_meat =
    Product(name: "Lunch Meat", imgUrl: "lunch_meat.jpg", price: 75);
final _beef = Product(name: "Beef", imgUrl: "beef.jpg", price: 68);
final _pork = Product(name: "pork", imgUrl: "pork.jpg", price: 150);

// Fruits
final _apple = Product(name: "Apple", imgUrl: "apple.jpg", price: 220);
final _orange = Product(name: "Orange", imgUrl: "orange.jpg", price: 120);
final _mango = Product(name: "Mango", imgUrl: "mango.jpg", price: 110);
final _banana = Product(name: "Banana", imgUrl: "banana.jpg", price: 80);

// All Categorys
final _beverages = Category(
  name: "Beverages",
  imgUrl: "beverages.jpg",
  Products: [_coffee, _juice, _mocktails],
);
final _bread_bakery = Category(
  name: "Bread/Bakery",
  imgUrl: "bread_bakery.jpg",
  Products: [_sandwich, _dinner_roll, _bagels],
);
final _dairy = Category(
  name: "Dairy",
  imgUrl: "dairy.jpg",
  Products: [_cheeses, _egg, _milk, _butter],
);
final _meat = Category(
  name: "Meat",
  imgUrl: "meat.jpg",
  Products: [_lunch_meat, _beef, _pork],
);
final _fruits = Category(
  name: "Fruits",
  imgUrl: "fruits.jpg",
  Products: [_apple, _banana,_orange, _mango],
);


final List<Category> categories = [
  _beverages,
  _bread_bakery,
  _dairy,
  _meat,
  _fruits,
];