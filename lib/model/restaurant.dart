import 'package:polento_food_delivery/model/food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final int rating;
  final String address;
  final List<Food> menu;

  Restaurant({
    this.imageUrl,
    this.name,
    this.rating,
    this.address,
    this.menu,
  });
}
