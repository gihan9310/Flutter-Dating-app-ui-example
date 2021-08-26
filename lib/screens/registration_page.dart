import 'package:dating_app/buttons/custom_button.dart';
import 'package:dating_app/common_widegts/customDivider.dart';
import 'package:dating_app/common_widegts/custom_lable.dart';
import 'package:dating_app/common_widegts/custom_social_login_button.dart';
import 'package:dating_app/common_widegts/custom_term_and_condition.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: hexToColor('#E5E5E5'),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            margin: EdgeInsets.all(
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/images/register.png')),
                Text(
                  'Register Here',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
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
                CustomLable(
                  lableName: 'Enter your mobile number',
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 9),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  size: size,
                  buttonColor: hexToColor('#FA5672'),
                  buttonText: 'Register',
                  onTab: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                CustomDivider(size: size),
                SizedBox(
                  height: 10,
                ),
                CustomSocialLogin(size: size),
                SizedBox(
                  height: 30,
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
