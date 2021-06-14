import 'package:flutter/material.dart';

import '../pages/config.dart';

class ProductItem extends StatelessWidget {
  final String prodId;
  final String title;
  final String imageUrl;
  final String duration;

  ProductItem(this.prodId, this.imageUrl, this.title, this.duration);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      margin: const EdgeInsets.only(top: 0, bottom: 16),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 120,
                  padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$duration دقيقة',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10,
              top: 5,
              bottom: 10,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: Text(
                    title,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: primaryColor,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '4.9',
                          style: TextStyle(color: primaryColor),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'عدد التقيمات 124',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'كافية',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
