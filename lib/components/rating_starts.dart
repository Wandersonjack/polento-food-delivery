import 'package:flutter/material.dart';
import 'package:polento_food_delivery/utilities/constants.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  RatingStars(this.rating);
  @override
  Widget build(BuildContext context) {
    String stars = '';
    for(int i =0; i<rating; i++){
      stars +='⭐ ';
      stars.trim();
    }
    return Text(
      stars,
      style: kBody2,
    );
  }
}
