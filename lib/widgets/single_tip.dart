import 'dart:ui';

import 'package:flutter/material.dart';
import '../pages/config.dart';

class SingleTip extends StatelessWidget {
  final String title;
  final String info;
  final String imageUrl;

  SingleTip({
    required this.title,
    required this.info,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            fontFamily: 'Cairo',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            info,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontFamily: 'Cairo',
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1)
      ],
    );
  }
}
