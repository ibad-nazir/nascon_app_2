import 'package:flutter/material.dart';
import 'package:nascon_app/pages/dashboard/screens/dashboard_screen.dart';
import 'package:nascon_app/pages/plans/screens/choose_plan.dart';
import 'package:nascon_app/pages/splash_screen/screen/splash_screen.dart';
import 'package:nascon_app/pages/workspace/create/screeens/create_workspace.dart';

Color textColor = Colors.black;
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    textColor = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: Dashboard(),

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
