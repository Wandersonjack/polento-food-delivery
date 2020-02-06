import 'package:flutter/material.dart';
import 'package:polento_food_delivery/components/search_textfield_component.dart';
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
        ],
      ),
    );
  }
}
