import 'package:flutter/material.dart';

class CustomTermAndCondition extends StatelessWidget {
  const CustomTermAndCondition({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Container(
              width: size.width,
              child: Text('By continue to login, you accept our company’s'),
            ),
            Container(
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
// Term & conditions and Privacy policies.
                  Text(
                    'Term & conditions ',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900),
                  ),
                  Text(' and '),
                  Text(
                    'Privacy policies.',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900),
                  ),
                ],
              )),
            )
          ],
        ));
  }
}
