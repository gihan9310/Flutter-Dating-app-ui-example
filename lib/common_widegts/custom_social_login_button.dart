import 'package:flutter/material.dart';

class CustomSocialLogin extends StatelessWidget {
  const CustomSocialLogin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Container(
            height: size.height / 11,
            width: size.width / 2.4,
            decoration: BoxDecoration(
              // color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: Colors.orange.shade700, width: 1),
            ),
            child: Image.asset('assets/images/google.jpg')
          ),
          Container(
            height: size.height / 11,
            width: size.width / 2.4,
            decoration: BoxDecoration(
              // color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: Colors.blue.shade600, width: 1),
            ),
            child: Icon(
              Icons.facebook,
              color: Colors.blue.shade600,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
