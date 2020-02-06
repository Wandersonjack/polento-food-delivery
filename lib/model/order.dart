import 'package:polento_food_delivery/model/food.dart';
import 'package:polento_food_delivery/model/restaurant.dart';


class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    this.restaurant,
    this.food,
    this.date,
    this.quantity,
  });
}
