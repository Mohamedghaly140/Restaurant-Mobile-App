import 'package:flutter/material.dart';
import 'package:resturant/pages/config.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 15,
                        right: 10,
                      ),
                      child: Text(
                        'انشاء حساب جديد',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'الأسم الكامل',
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return 'برجاء ادخال الأسم الكامل';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'البريد الإلكتروني',
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return 'برجاء ادخال الأسم الكامل';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'الأسم الكامل',
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return 'برجاء ادخال الأسم الكامل';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'الأسم الكامل',
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 4) {
                            return 'برجاء ادخال الأسم الكامل';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Text('Bottom Text'),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
