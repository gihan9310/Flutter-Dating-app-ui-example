import 'package:dating_app/buttons/custom_button.dart';
import 'package:dating_app/common_widegts/custom_lable.dart';
import 'package:dating_app/common_widegts/custom_term_and_condition.dart';
import 'package:dating_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class FrogetPasswordPage extends StatefulWidget {
  const FrogetPasswordPage({Key? key}) : super(key: key);

  @override
  _FrogetPasswordPageState createState() => _FrogetPasswordPageState();
}

class _FrogetPasswordPageState extends State<FrogetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                Container(
                  width: size.width,
                  height: size.height / 2,
                  child: Image.asset('assets/images/forgetPw.PNG'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'Trouble Log In?',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                  height: 25,
                ),
                CustomButton(
                  size: size,
                  buttonColor: hexToColor('#FA5672'),
                  buttonText: 'Send Reset Email',
                  onTab: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                ),
                 SizedBox(
                  height: 50,
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
