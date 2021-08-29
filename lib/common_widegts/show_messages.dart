import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dating_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ShowMessages {
  static confrim({required BuildContext context}) {
    AwesomeDialog(
      context: context,
      keyboardAware: true,
      dismissOnBackKeyPress: false,
      dialogType: DialogType.WARNING,
      animType: AnimType.BOTTOMSLIDE,
      btnCancelText: "Cancel",
      btnOkText: "Yes",
      title: 'Do you want to logout?',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.topToBottom,
            child: LoginPage(),
          ),
        );
      },
    ).show();
  }
}
