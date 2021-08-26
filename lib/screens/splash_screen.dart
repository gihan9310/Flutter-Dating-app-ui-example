import 'package:dating_app/screens/get_start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
       Future.delayed(Duration(seconds: 5)).then((value) => {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => GetStartPage(),
          //     ))
        });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              // color: Colors.black38,
              child: OverflowBox(
                maxWidth: 650,
                minHeight: 650,
                child: SizedBox(
                  width: 600,
                  height: 600,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(600),
                      color: hexToColor('#FA5672').withOpacity(0.1),
                    ),
                    child: OverflowBox(
                      maxWidth: 500,
                      minHeight: 500,
                      child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Opacity(
                          opacity: 1,
                          child: 
                          Container(
                            padding: EdgeInsets.all(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(400),
                              color: hexToColor('#FA5672').withOpacity(0.1),
                            ),
                            child: OverflowBox(
                              maxWidth: 300,
                              minHeight: 300,
                              child: SizedBox(
                                width: 300,
                                height: 300,
                                child: Container(
                                  padding: EdgeInsets.all(60),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                    color:
                                        hexToColor('#FA5672').withOpacity(0.1),
                                  ),
                                  child: Image.asset(
                                    'assets/images/splash_sccreen.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(child: Text('Find Your Soulmate'))
          ],
        ),
      ),
    ));
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
