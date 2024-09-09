import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

Widget termAndCondition() {
  return Padding(
    padding: const EdgeInsets.only(top: 32, bottom: 28),
    child: Center(
      child: SizedBox(
        width: 290,
        child: Text(
          "By sign in or sign up, you agree to our Terms of Service and Privac y Policy",
          style: greyTextStyle.copyWith(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
