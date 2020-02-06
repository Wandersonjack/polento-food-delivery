import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 0.8),
          ),
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          hintText: 'Search by Food or Restaurant',
        ),
      ),
    );
  }
}
