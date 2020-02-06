import 'package:flutter/material.dart';
import 'package:polento_food_delivery/components/recent_orders.dart';
import 'package:polento_food_delivery/components/search_textfield.dart';
import 'package:polento_food_delivery/data/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        ],
      ),
    );
  }
}
