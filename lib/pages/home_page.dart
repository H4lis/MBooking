import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: Center(
            child: Text(
          "Home",
          style: yellowTextStyle,
        )));
  }
}
