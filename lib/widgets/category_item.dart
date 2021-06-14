import 'package:flutter/material.dart';
import '../pages/config.dart';

class CategoryItem extends StatelessWidget {
  final String categoryId;
  final String imageUrl;
  final String title;

  CategoryItem(this.categoryId, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: accentColor,
            ),
            child: Image.asset(
              imageUrl,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo',
            ),
          ),
        ],
      ),
    );
  }
}
