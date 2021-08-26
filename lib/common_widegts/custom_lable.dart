import 'package:flutter/material.dart';

class CustomLable extends StatelessWidget {
  const CustomLable({
    required this.lableName,
    Key? key,
  }) : super(key: key);

  final String lableName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        lableName,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: hexToColor('#5E5E5E')
        ),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
