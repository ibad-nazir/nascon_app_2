import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/constants.dart';
import '../../../../main.dart';
import '../../otp_screen/screens/otp_screen.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? darkbackground_color
          : Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/lock.png",
            height: 120,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Forgot Password ?",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: textColor,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: SizedBox(
            height: 55, // Adjust the height as needed
            child: Material(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
              elevation: 5,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                controller: _phoneController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 13),
                    prefixIcon: Icon(
                      CupertinoIcons.phone,
                      color: Colors.black,
                    ),
                    hintText: "Enter Phone Number",
                    labelStyle:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xFFBABABA),
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(22),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpScreen(),
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
                  style: GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
