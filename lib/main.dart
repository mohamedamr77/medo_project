import 'package:flutter/material.dart';
import 'package:medo_project/constatnt.dart';
import 'package:medo_project/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstant.scaffoldBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
