import 'package:dating_app/common_widegts/custom_contact.dart';
import 'package:flutter/material.dart';

class ManageContacts extends StatefulWidget {
  const ManageContacts({Key? key}) : super(key: key);

  @override
  _ManageContactsState createState() => _ManageContactsState();
}

class _ManageContactsState extends State<ManageContacts> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomContact(
              image: 'assets/images/wallpaper/caller2.jpg',
              name: 'Samanthi',
              mobile: '0712321121',
            ),
            CustomContact(
              image: 'assets/images/wallpaper/caller.jpg',
              name: 'Samadi',
              mobile: '0712321121',
            ),
            CustomContact(
              image: 'assets/images/wallpaper/caller.jpg',
              name: 'SAMA',
              mobile: '0712321121',
            ),
            CustomContact(
              image: 'assets/images/wallpaper/caller2.jpg',
              name: 'Amari',
              mobile: '0712321121',
            ),
            CustomContact(
              image: 'assets/images/wallpaper/caller2.jpg',
              name: 'Nayana',
              mobile: '453434534534534',
            ),
          ],
        ),
      ),
    );
  }
}
