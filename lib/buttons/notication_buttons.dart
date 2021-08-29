import 'package:flutter/material.dart';

class NotificationButtons extends StatelessWidget {
  const NotificationButtons({
    Key? key,
    required this.count,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final int count;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 72,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                ),
              ],
            ),
            Positioned(
              top: -2,
              right: -4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red.shade800),
                alignment: Alignment.center,
                child: Text('${count>99?'99+':count}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
