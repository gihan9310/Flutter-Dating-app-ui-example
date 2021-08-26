import 'package:dating_app/screens/froget_password_page.dart';
import 'package:dating_app/screens/get_start_screen.dart';
import 'package:dating_app/screens/login_screen.dart';
import 'package:dating_app/screens/registration_page.dart';
import 'package:dating_app/screens/splash_screen.dart';
import 'package:dating_app/screens/splash_screen_with_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenWithImage(),
      
    );
  }
}

