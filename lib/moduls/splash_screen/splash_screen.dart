import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isalmi/layout/home_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String nameId = "splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, HomeLayout.nameId);
      });
    });

    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/images/Group 10.png",
        fit: BoxFit.cover,
        width: mediaQuery.width,
        height: mediaQuery.height,
      ),
    );
  }
}
