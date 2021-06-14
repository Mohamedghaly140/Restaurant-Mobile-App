import 'package:flutter/material.dart';

import './drawer_item.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Mohamed Ghaly',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'mohamedghaly140@gmail.com',
                style: TextStyle(color: Colors.grey[600]),
              ),
              decoration: BoxDecoration(color: Colors.grey[300]),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
            DrawerItem('الرئيسية', Icons.home_outlined),
            DrawerItem('حسابي', Icons.person_outline),
            DrawerItem('المفضلة', Icons.favorite_border_outlined),
            Spacer(),
            DrawerItem('تسجيل الخروج', Icons.logout_outlined),
          ],
        ),
      ),
    );
  }
}
