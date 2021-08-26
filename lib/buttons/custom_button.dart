import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.size,
    required this.buttonText,
    required this.buttonColor,
    required this.onTab,
  }) : super(key: key);

  final Size size;
  final buttonText;
  final Color buttonColor;
  final Function() onTab;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
        onTap: onTab,
        child: Container(
          width: size.width,
          height: size.height / 12,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(14)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
    );
  }
}
