import 'package:flutter/material.dart';
import 'package:polento_food_delivery/components/rating_starts.dart';
import 'package:polento_food_delivery/model/food.dart';
import 'package:polento_food_delivery/model/restaurant.dart';
import 'package:polento_food_delivery/utilities/constants.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  _buildMenuItem(Food menuItem){
    return Center(child: Text(menuItem.name),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  image: AssetImage(widget.restaurant.imageUrl),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style: kBody1,
                    ),
                    Text(
                      '0.3 miles away',
                      style: kBody2,
                    ),
                  ],
                ),
                RatingStars(widget.restaurant.rating),
                spaceH8,
                Text(
                  widget.restaurant.address,
                  style: kBody2,
                ),
                spaceH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('Review'),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Contact'),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          spaceH16,
          Center(
            child: Text(
              'Menu',
              style: kDisplay2,
            ),
          ),
          spaceH8,
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index){
                Food food = widget.restaurant.menu[index];
                return Center(
                  child:_buildMenuItem(food),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
