import 'package:flutter/material.dart';

import '../account/login_screen.dart';
import '../config.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _secureText = false;
  final _phoneFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  String _emailValue = '';

  void _saveForm() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    print(_emailValue);
  }

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
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Form(
                      key: _formKey,
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
                          TextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'الأسم الكامل',
                              hintTextDirection: TextDirection.rtl,
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 15, 15, 10),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || value.length < 4) {
                                return 'برجاء ادخال الأسم الكامل';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'البريد الإلكتروني',
                              hintTextDirection: TextDirection.rtl,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 15, 15, 10),
                            ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !value.contains('@') ||
                                  !value.contains('.')) {
                                return 'برجاء ادخال البريد الإلكتروني صحيح';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: 'كلمة المرور',
                              hintTextDirection: TextDirection.rtl,
                              prefixIcon: Icon(
                                Icons.security_outlined,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                disabledColor: Colors.transparent,
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                                icon: Icon(
                                  _secureText
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 15, 15, 10),
                            ),
                            obscureText: _secureText,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'برجاء ادخال كلمة المرور ';
                              } else if (value.length <= 6) {
                                return 'برجاء ادخال كلمة المرور اكثر من 6 حروف ';
                              }
                              return null;
                            },
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_phoneFocusNode);
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: 'رقم الهاتف',
                              hintTextDirection: TextDirection.rtl,
                              prefixIcon: Icon(
                                Icons.phone_iphone_outlined,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 15, 15, 10),
                            ),
                            focusNode: _phoneFocusNode,
                            validator: (value) {
                              if (value!.isEmpty || value.length < 4) {
                                return 'برجاء ادخال رقم هاتف صحيح ';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          MaterialButton(
                            onPressed: () {
                              _saveForm();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Text(
                                'تسجيل',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              'عند الضغط علي الشروط و الأحكام انت توافق علي قوانين التطبيق',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'اذا لديك حساب بالفعل ؟',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            'سجل الدخول الأن',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
