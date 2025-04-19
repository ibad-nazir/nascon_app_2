import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nascon_app/pages/Auth/reset_password/screens/reset_screen.dart';

import '../../../../common/constants.dart';
import '../../../../main.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // AnimationController? _controller;
  // int otpTimer = 90;
  @override
  void initState() {
    // _controller =
    //     AnimationController(vsync: this, duration: Duration(seconds: otpTimer));

    // _controller!.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? darkbackground_color
          : Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.back)),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/otp.png",
              height: 120,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Enter OTP",
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Enter your your phone number then we will send you OTP to reset your password",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            borderRadius: BorderRadius.circular(15),
            fieldHeight: 70,
            fieldWidth: 60,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resend OTP ?",
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "00:30",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(22),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPassword(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: secondary_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Next →",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
