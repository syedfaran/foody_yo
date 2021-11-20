import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/constants/route_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
       const Duration(seconds: 3),
            () => Navigator.pushReplacementNamed(context, RouteString.walkThrough));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image:
          DecorationImage(image: ImageString.splash, fit: BoxFit.fitHeight),
        ),

        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0,end: 1.0),
          curve: Curves.bounceOut,
          builder: (context,value,child){
            return Transform.scale(scale: value,child: child);
          },
          duration: const Duration(milliseconds: 500),
          child: Container(
            foregroundDecoration: const BoxDecoration(
              image:
              DecorationImage(image: ImageString.splashCenter),
            ),
          ),
        ),
      ),
    );
  }
}
