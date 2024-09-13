import 'package:flutter/material.dart';
import 'package:mbooking/pages/sign_up_page.dart';
import 'package:mbooking/shared/theme.dart';

import '../widgets/termAndCondition.dart';

class AuthChoicePage extends StatefulWidget {
  const AuthChoicePage({super.key});

  @override
  State<AuthChoicePage> createState() => _AuthChoicePageState();
}

class _AuthChoicePageState extends State<AuthChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            const Spacer(),
            contentSection(),
            buttonSingIn(),
            buttonSignUp(),
            termAndCondition(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Image.asset(
      "assets/images/logo.png",
      height: 32,
    );
  }

  Widget contentSection() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 329,
            width: 329,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/avengers.png"))),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "MBooking hello!",
            style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 32),
          ),
          Text(
            "Enjoy your favorite movies",
            style: whiteTextStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: greyLight,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: greyLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonSingIn() {
    return Container(
      margin: EdgeInsets.only(top: 46),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            minimumSize: const Size(double.infinity, 56)),
        child: Text(
          "Sign in",
          style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
    );
  }

  Widget buttonSignUp() {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(
                  color: whiteColor,
                  width: 1,
                )),
            backgroundColor: blackColor,
            minimumSize: const Size(double.infinity, 56)),
        child: Text(
          "Sign up ",
          style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),
        ),
      ),
    );
  }
}
