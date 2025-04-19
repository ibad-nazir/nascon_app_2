import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nascon_app/pages/Auth/signup/screens/signup.dart';

import '../../../../common/constants.dart';
import '../../forget_password/screens/forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

bool showEyeOpned = false;
bool showPasswrod = true;

class _LoginScreenState extends State<LoginScreen> {
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
            child:
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Sign In",
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 40,
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
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                  controller: _emailController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 13),
                      prefixIcon: Icon(
                        CupertinoIcons.person,
                        color: Colors.black,
                      ),
                      hintText: "Enter email",
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
                  controller: _passwordController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 13),
                      prefixIcon: Icon(
                        CupertinoIcons.lock,
                        color: Colors.black,
                      ),
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
                      hintText: "Enter Password",
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPassword(),
                ),
              );
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: Text(
                  "Forgot Password ?",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(22),
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: secondary_color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  style: GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 1,
                width: 110,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              Text(
                "Or Sign in with ",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 1,
                width: 110,
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialButton('ƒ'),
              SizedBox(
                width: 20,
              ),
              buildSocialButton('G'),
              SizedBox(
                width: 20,
              ),
              buildSocialButton('𝕏'),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Don't have Account ?",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  " Click Here",
                  style: GoogleFonts.poppins(
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Widget buildSocialButton(String text) {
  return Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      color: Colors.white12,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    ),
  );
}
