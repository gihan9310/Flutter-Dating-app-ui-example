import 'package:flutter/material.dart';

class CustomContact extends StatelessWidget {
  const CustomContact({
   required this.image ,
    required this.mobile,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String name;
  final String image;
  final String mobile;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(name),
        subtitle: Text(mobile),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(
                image
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        trailing: Icon(Icons.call),
        // subtitle: Text('Apple kamu'),
      ),
    );
  }
}
