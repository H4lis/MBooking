import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: whiteColor,
          ),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(right: defaultMargin, left: defaultMargin, top: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter Username",
              style: yellowTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Latin characters, no emoji/symbols",
              style: whiteTextStyle,
            ),
            inputUsername(),
            Spacer(),
            buttonContinue()
          ],
        ),
      ),
    );
  }

  Widget inputUsername() {
    return Padding(
      padding: EdgeInsets.only(top: 48),
      child: TextField(
        cursorColor: whiteColor,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
          ),
          contentPadding: EdgeInsets.only(bottom: 24),
          hintText: "Password",
          hintStyle: greyTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
        style: whiteTextStyle.copyWith(
          fontSize: 24,
          fontWeight: bold,
        ),
      ),
    );
  }

  Widget buttonContinue() {
    return Container(
      margin: EdgeInsets.only(top: 32, bottom: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            minimumSize: const Size(double.infinity, 56)),
        child: Text(
          "Continue",
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
    );
  }
}
