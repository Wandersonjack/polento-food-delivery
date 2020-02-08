import 'package:flutter/material.dart';
import 'package:polento_food_delivery/data/data.dart';
import 'package:polento_food_delivery/model/order.dart';
import 'package:polento_food_delivery/utilities/constants.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _buildRecentOrder(BuildContext context, Order order) {
      return Container(
        margin: EdgeInsets.all(10),
        width: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: Colors.grey[200],
          ),
        ),
        //food image and content
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //food photo
            Expanded(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      height: 100,
                      width: 100,
                      image: AssetImage(order.food.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  //order details
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            order.food.name + 'food food I love food',
                            style: kBody1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          spaceH4,
                          Text(
                            order.restaurant.name,
                            style: kBody2,
                          ),
                          spaceH4,
                          Text(order.date),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //action button
            Container(
              margin: EdgeInsets.only(right: 20),
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      print('adding items');
                    })),
          ],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Recent Orders',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              Order order = currentUser.orders[index];
              return _buildRecentOrder(context, order);
            },
          ),
        ),
      ],
    );
  }
}
