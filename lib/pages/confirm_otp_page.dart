import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mbooking/shared/theme.dart';

class ConfirmOtpPage extends StatefulWidget {
  const ConfirmOtpPage({super.key});

  @override
  State<ConfirmOtpPage> createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: defaultMargin, left: defaultMargin, top: 56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Confirm OTP code",
                style: yellowTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "You just need to enter the OTP sent to the registered phone number (704) 555-0127.",
                style: whiteTextStyle,
              ),
              const SizedBox(
                height: 48,
              ),
              inputanOtpCode(),
              const SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "00:59",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 20),
                ),
              ),
              buttonContinue()
            ],
          ),
        ),
      ),
    );
  }

  Widget inputanOtpCode() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          6,
          (index) {
            return Container(
              width: 52,
              height: 72,
              child: TextField(
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 32),
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.length == 1 && index < 5) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  fillColor: yellowLightColor,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1,
                        color: primaryColor,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 1,
                        color: primaryColor.withOpacity(0.6),
                      )),
                ),
              ),
            );
          },
        ));
  }

  Widget buttonContinue() {
    return Container(
      margin: const EdgeInsets.only(top: 32, bottom: 235),
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
