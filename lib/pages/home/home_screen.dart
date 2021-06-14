import 'package:flutter/material.dart';

import '../../widgets/category_item.dart';
import '../../widgets/product_item.dart';
import '../../widgets/drawer.dart';

import '../config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  final List<Map> _categoryItems = [
    {
      'id': '1',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat1.png',
    },
    {
      'id': '2',
      'title': 'البرجر',
      'imageUrl': 'assets/images/category/cat2.png',
    },
    {
      'id': '3',
      'title': 'الدجاج',
      'imageUrl': 'assets/images/category/cat3.png',
    },
    {
      'id': '4',
      'title': 'الطعام الأسيوي',
      'imageUrl': 'assets/images/category/cat4.png',
    },
    {
      'id': '5',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat5.png',
    },
    {
      'id': '6',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat6.png',
    },
    {
      'id': '7',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat7.png',
    },
    {
      'id': '8',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat8.png',
    },
    {
      'id': '9',
      'title': 'العروض',
      'imageUrl': 'assets/images/category/cat9.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      endDrawer: SideDrawer(),
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 25,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    'توصيل الطلب الي',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Cairo',
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'موقع العميل',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Cairo',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: primaryColor,
                        size: 26,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: 'بحــث',
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintTextDirection: TextDirection.rtl,
                            fillColor: Colors.grey[200],
                            filled: true,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _drawerKey.currentState!.openEndDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 26,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categoryItems.length,
                    itemBuilder: (ctx, i) {
                      return CategoryItem(
                        _categoryItems[i]['id'],
                        _categoryItems[i]['imageUrl'],
                        _categoryItems[i]['title'],
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.522,
                  child: ListView(
                    children: [
                      ProductItem(
                        '1',
                        'assets/images/product/pro1.jpg',
                        'هوليود ستارز كافية',
                        '20 - 30',
                      ),
                      ProductItem(
                        '1',
                        'assets/images/product/pro2.jpg',
                        'هوليود ستارز كافية',
                        '20 - 30',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'الاشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'العروض',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
