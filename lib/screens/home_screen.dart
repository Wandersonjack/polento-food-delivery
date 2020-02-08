import 'package:flutter/material.dart';
import 'package:polento_food_delivery/components/rating_starts.dart';
import 'package:polento_food_delivery/components/recent_orders.dart';
import 'package:polento_food_delivery/components/search_textfield.dart';
import 'package:polento_food_delivery/data/data.dart';
import 'package:polento_food_delivery/model/restaurant.dart';
import 'package:polento_food_delivery/screens/restaurant_screen.dart';
import 'package:polento_food_delivery/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurant() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (_)=> RestaurantScreen(restaurant: restaurant,),
          )),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: Colors.grey[200],
              ),
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: Hero(
                    tag: restaurant.imageUrl,
                    child: Image(
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                      image: AssetImage(restaurant.imageUrl),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        restaurant.name,
                        style: kBody1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spaceH4,
                      RatingStars(restaurant.rating),
                      Text(
                        restaurant.address,
                        style: kBody2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      spaceH4,
                      Text(
                        '0.3 miles away',
                        style: kBody2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
    return Column(children: restaurantList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        ),
        title: Text('Polento'),
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${currentUser.cart.length}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SearchComponent(),
          RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Nearby  Restaurants',
                  style: kDisplay2,
                ),
              ),
              _buildRestaurant(),
            ],
          ),
        ],
      ),
    );
  }
}
