import 'package:flutter/material.dart';
import 'package:nascon_app/pages/splash_screen/screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: SplashScreen(),

      // Scaffold(
      //   backgroundColor: Theme.of(context).brightness == Brightness.dark
      //       ? Color(0xff1c1244)
      //       : Colors.white,
      //   body: Center(
      //     child: Text('Ibad Nazier!'),
      //   ),
      // ),
    );
  }
}
