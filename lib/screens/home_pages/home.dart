import 'package:dating_app/buttons/notication_buttons.dart';
import 'package:dating_app/common_widegts/show_messages.dart';
import 'package:dating_app/screens/home_pages/find_friends.dart';
import 'package:dating_app/screens/home_pages/home_nav.dart';
import 'package:dating_app/screens/home_pages/page_contacts.dart';
import 'package:flutter/material.dart';
import 'package:confirm_dialog/confirm_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> pages = [
    HomeNave(),
    ManageContacts(),
    FindFirends(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.chat,
          ),
        ),
        appBar: AppBar(
          backwardsCompatibility: false,
          automaticallyImplyLeading: false,
          backgroundColor: hexToColor('#FA5672'),
          title: Text('Meet Me'),
          centerTitle: true,
          actions: [
            NotificationButtons(
              count: 1201,
              icon: Icons.notifications,
              onTap: () {},
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  ShowMessages.confrim(context: context);
                });
              },
              icon: Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
        body: this.pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: hexToColor('#FA5672'),
          currentIndex: _currentIndex,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts,
                size: 30,
                color: Colors.white,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.find_in_page,
                size: 30,
                color: Colors.white,
              ),
              label: 'Find',
              
            )
          ],
          onTap: (value) {
            setState(() {
              this._currentIndex = value;
            });
          },
        ),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
