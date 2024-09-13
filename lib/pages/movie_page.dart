import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: Center(
            child: Text(
          "Movie",
          style: yellowTextStyle,
        )));
  }
}
