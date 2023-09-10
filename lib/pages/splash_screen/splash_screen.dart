import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/home_layout/home_layout.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeLayout(),
          ));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/splash.png"), fit: BoxFit.fill),
      ),
    );
  }
}
