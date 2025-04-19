import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/constants.dart';
import '../../../../main.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _password2Controller = TextEditingController();

  bool showPasswrod = false;

  bool showEyeOpned = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? darkbackground_color
          : Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Reset new Password",
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
                  obscureText: showPasswrod,
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  controller: _passwordController,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 22.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPasswrod = !showPasswrod;
                              showEyeOpned = !showEyeOpned;
                            });
                          },
                          child: Icon(
                            showEyeOpned
                                ? CupertinoIcons.eye_slash
                                : CupertinoIcons.eye,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 13),
                      prefixIcon: Icon(
                        CupertinoIcons.lock,
                        color: Colors.black,
                      ),
                      hintText: "Enter New Password",
                      labelStyle: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.black),
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Color(0xFFBABABA),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
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
                  obscureText: showPasswrod,
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  controller: _password2Controller,
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 22.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPasswrod = !showPasswrod;
                              showEyeOpned = !showEyeOpned;
                            });
                          },
                          child: Icon(
                            showEyeOpned
                                ? CupertinoIcons.eye_slash
                                : CupertinoIcons.eye,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 13),
                      prefixIcon: Icon(
                        CupertinoIcons.lock,
                        color: Colors.black,
                      ),
                      hintText: "Confirm New Password",
                      labelStyle: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.black),
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
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => OtpScreen(),
                //   ),
                // );
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
        ]),
      ),
    );
  }
}
