import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mbooking/shared/theme.dart';
import 'package:mbooking/widgets/termAndCondition.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        centerTitle: true,
        title: Text(
          'Sign up',
          style: whiteTextStyle.copyWith(
            fontSize: 28,
            fontWeight: bold,
          ),
        ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: defaultMargin, left: defaultMargin, top: 48),
          child: Column(
            children: [
              inputPhoneNumber(),
              inputPassword(),
              buttonContinue(),
              opsionSignUp(),
              termAndCondition()
            ],
          ),
        ),
      ),
    );
  }

  Widget opsionSignUp() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: greyLight,
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Or continue with",
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: greyLight,
                thickness: 1,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: grey,
                minimumSize: const Size(double.infinity, 56)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/facebook.png",
                  height: 24,
                ),
                SizedBox(
                  width: 6.5,
                ),
                Text(
                  "Facebook",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: grey,
                minimumSize: const Size(double.infinity, 56)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/google.png",
                  height: 24,
                ),
                SizedBox(
                  width: 6.5,
                ),
                Text(
                  "Google",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget inputPhoneNumber() {
    return TextField(
      cursorColor: whiteColor,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: whiteColor),
        ),
        contentPadding: EdgeInsets.only(bottom: 24),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 24),
          child: Image.asset(
            "assets/icons/call.png",
            width: 32,
          ),
        ),
        hintText: "Phone number",
        hintStyle: greyTextStyle.copyWith(
          fontSize: 24,
          fontWeight: bold,
        ),
      ),
      style: whiteTextStyle.copyWith(
        fontSize: 24,
        fontWeight: bold,
      ),
    );
  }

  Widget inputPassword() {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: TextField(
        cursorColor: whiteColor,
        obscureText: _isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              icon: Icon(
                _isObscure ? Icons.visibility_off : Icons.visibility,
                size: 32,
              )),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: whiteColor),
          ),
          contentPadding: EdgeInsets.only(bottom: 24),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 24),
              child: Icon(
                Icons.lock_outline_rounded,
                size: 32,
                color: whiteColor,
              )),
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
      margin: EdgeInsets.only(top: 32, bottom: 235),
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
