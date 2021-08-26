import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Row(
        children: <Widget>[
          Expanded(
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 100.0, right: 15.0),
                child: Divider(
                  color: Colors.black,
                  height: 50,
                )),
          ),
          Text("Or"),
          Expanded(
            child: new Container(
                margin:
                    const EdgeInsets.only(left: 15.0, right: 100.0),
                child: Divider(
                  color: Colors.black,
                  height: 50,
                )),
          ),
        ],
      ),
    );
  }
}
