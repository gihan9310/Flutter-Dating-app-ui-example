import 'package:dating_app/screens/get_start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenWithImage extends StatefulWidget {
  const SplashScreenWithImage({Key? key}) : super(key: key);

  @override
  _SplashScreenWithImageState createState() => _SplashScreenWithImageState();
}

class _SplashScreenWithImageState extends State<SplashScreenWithImage> {
    void initState() {
       Future.delayed(Duration(seconds: 5)).then((value) => {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GetStartPage(),
              ))
        });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Image.asset(
            'assets/images/goodOne.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
