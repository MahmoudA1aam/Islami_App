import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isalmi/core/provider/app_provider.dart';
import 'package:isalmi/layout/home_layout.dart';
import 'package:provider/provider.dart';

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
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? "assets/images/splash_dark.png"
            : "assets/images/splash_light.png",
        fit: BoxFit.cover,
        width: mediaQuery.width,
        height: mediaQuery.height,
      ),
    );
  }
}
