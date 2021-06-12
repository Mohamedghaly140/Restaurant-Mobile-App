import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../account/register_screen.dart';
import '../config.dart';

import '../../widgets/single_tip.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  List<Map> slider = [
    {
      "title": 'ابحث عن الماكولات التي تحبها',
      "info": 'افضل الأطعمة تجدها في مطعمنا من هنا يمكنك البدء',
      "imageUrl": 'assets/images/tip1.png',
    },
    {
      "title": 'الكثير من الأنواع المختلفة',
      "info": 'يمكنك البحث عن انواع الماكولات المختلفة المتوفرة لدينا',
      "imageUrl": 'assets/images/tip2.png',
    },
    {
      "title": 'اطلب وجبتك الأن',
      "info": 'اسرع في طلب كل ما تريدة من الماكولات المتنوعة',
      "imageUrl": 'assets/images/tip3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 6;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: height * 0.4),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  'دخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
            ),
            Container(
              height: height * 3.4,
              child: PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey,
                indicatorSelectorColor: primaryColor,
                length: slider.length,
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: slider.length,
                  itemBuilder: (ctx, i) {
                    return SingleTip(
                      title: slider[i]['title'],
                      info: slider[i]['info'],
                      imageUrl: slider[i]['imageUrl'],
                    );
                  },
                ),
              ),
            ),
            Container(
              height: height * 1.4,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return RegisterScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'انشاء حساب',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.14),
                      MaterialButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(width: 20),
                              Text(
                                'متابعة باستخدام فيسبوك',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
