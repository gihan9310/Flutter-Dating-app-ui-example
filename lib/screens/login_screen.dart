import 'dart:convert';
import 'dart:ui';

import 'package:dating_app/buttons/custom_button.dart';
import 'package:dating_app/common_widegts/customDivider.dart';
import 'package:dating_app/common_widegts/custom_lable.dart';
import 'package:dating_app/common_widegts/custom_social_login_button.dart';
import 'package:dating_app/common_widegts/custom_term_and_condition.dart';
import 'package:dating_app/screens/froget_password_page.dart';
import 'package:dating_app/screens/get_start_screen.dart';
import 'package:dating_app/screens/home_pages/home.dart';
import 'package:dating_app/screens/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            // height: size.height,
            margin: EdgeInsets.all(
              15,
            ),
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset('assets/images/heart.png'),
                            ),
                            Container(
                              width: size.width / 2.6,
                              child: Text(
                                'Login to a lovely life.',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(child: Image.asset('assets/images/couple.png')),
                    ],
                  ),
                ),
                CustomLable(
                  lableName: 'Enter your Email',
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: hexToColor('#F0F0F0'),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 9),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomLable(
                  lableName: 'Enter your Password',
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  decoration: InputDecoration(
                      fillColor: hexToColor('#F0F0F0'),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 9),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(top: 4, bottom: 4),
                  width: size.width,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FrogetPasswordPage(),
                          ));
                    },
                    child: Text(
                      'Trouble login?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  size: size,
                  buttonColor: hexToColor('#FA5672'),
                  buttonText: 'Login',
                  onTab: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: HomePage(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomDivider(size: size),
                CustomSocialLogin(size: size),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: RegistrationPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomTermAndCondition(size: size),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
