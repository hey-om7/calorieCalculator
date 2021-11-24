// import 'package:calorie_calc/activity.dart';
// import 'package:calorie_calc/age.dart';
// import 'package:calorie_calc/finalResults.dart';
// import 'package:calorie_calc/gender.dart';
// import 'package:calorie_calc/height.dart';
// import 'package:calorie_calc/weight.dart';
import 'package:calorie_calc/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
