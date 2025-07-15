import 'package:flutter/material.dart';

class AppNavigation {
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<Widget>(builder: (context) => page),
    );
  }

  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute<Widget>(builder: (context) => page),
    );
  }

  static void pushAndRemove(BuildContext context, Widget page) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute<Widget>(builder: (context) => page),
      (route) => false,
    );
  }
}
