import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config.dart';

class ProductDetailScreen extends StatefulWidget {
  final String prodId;
  final String title;
  final String imageUrl;
  final String duration;

  ProductDetailScreen(this.prodId, this.imageUrl, this.title, this.duration);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _counter = 0;

  Widget buildIcon(
    BuildContext context,
    Color bgColor,
    Widget icon,
    Function() iconAction,
  ) {
    return Container(
      width: 36,
      height: 37,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 1,
            color: Colors.grey.shade200,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: IconButton(
        icon: icon,
        onPressed: iconAction,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildIcon(
                      context,
                      Colors.white,
                      Icon(
                        Icons.arrow_back_ios,
                        color: primaryColor,
                      ),
                      () {
                        Navigator.of(context).pop();
                      },
                    ),
                    buildIcon(
                      context,
                      Colors.white,
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: primaryColor,
                      ),
                      () {},
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildIcon(
                            context,
                            primaryColor,
                            FaIcon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                            () {
                              setState(() {
                                _counter--;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              '$_counter',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          buildIcon(
                            context,
                            primaryColor,
                            FaIcon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                            () {
                              setState(() {
                                _counter++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          'عنوان الطعام',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.favorite, color: primaryColor),
                                  SizedBox(width: 2),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: primaryColor,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    'التقيمات 5',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'تفاصيل الطعام تفاصيل الطعام تفاصيل الطعام تفاصيل الطعام تفاصيل الطعامتفاصيل الطعام تفاصيل الطعام تفاصيل الطعام',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Cairo',
                          color: Colors.grey[600],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'وقت التوصيل',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(width: 5),
                          Text(
                            '${widget.duration} دقيقة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.09,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.grey.shade200,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '57.49\$',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 22,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.grey.shade200,
                      offset: Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Text(
                      'اضافة الي السلة',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 20),
                    FaIcon(
                      FontAwesomeIcons.shoppingBag,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
