import 'package:calorie_calc/welcome.dart';
import 'package:flutter/material.dart';
import 'restart.dart';
import 'globals.dart' as globals;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (globals.restart) {
      globals.restart = false;
      // FlutterRestart.restartApp();       //repair this
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: WelcomeScreen(),
        ),
      ),
    );
  }
}
