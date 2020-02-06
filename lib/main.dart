import 'package:flutter/material.dart';
import 'package:polento_food_delivery/screens/home_screen.dart';
import 'package:polento_food_delivery/utilities/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}
