import 'package:flutter/material.dart';
import 'package:resturant/pages/config.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              leading: Icon(icon, color: primaryColor),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
          Divider(
            color: Colors.grey[500],
          )
        ],
      ),
    );
  }
}
