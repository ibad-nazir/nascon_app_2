import 'package:flutter/material.dart';
import 'package:nascon_app/common/constants.dart';
import 'package:nascon_app/pages/Auth/signup/screens/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignUp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? darkbackground_color
          : Colors.white,
      body: Center(
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: secondary_color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.white),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
