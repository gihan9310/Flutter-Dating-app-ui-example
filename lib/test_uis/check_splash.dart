import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            // color: Colors.blueGrey,
            child: SizedBox(
              width: 700,
              height: 600,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: 700.0,
                minHeight: 0.0,
                maxHeight: 700.0,
                child: Container(
                  padding: EdgeInsets.all(70),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(700),
                    color: hexToColor('#FA5672').withOpacity(0.1),
                  ),
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 500.0,
                      minHeight: 0.0,
                      maxHeight: 500.0,
                      child: Container(
                        padding: EdgeInsets.all(70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: hexToColor('#FA5672').withOpacity(0.1),
                        ),
                        child: Container(
                          // color: Colors.red,
                          width: 350,
                          height: 350,
                          child: SizedBox(
                            width: 350,
                            height: 350,
                            child: OverflowBox(
                              minWidth: 0.0,
                              maxWidth: 500.0,
                              minHeight: 0.0,
                              maxHeight: 500.0,
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 300,
                                    child: OverflowBox(
                                      minWidth: 0.0,
                                      maxWidth: 300.0,
                                      minHeight: 0.0,
                                      maxHeight: 300.0,
                                      child: Container(
                                        padding: EdgeInsets.all(70),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(300),
                                          color: hexToColor('#FA5672').withOpacity(0.1),
                                        ),
                                        child: Image.asset('assets/images/splash_sccreen.png'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Find Your Soulmate',style: TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold),),
                                  )
                                ],
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
      ),
    );
  }

    Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
