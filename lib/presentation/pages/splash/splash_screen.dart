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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: ImageString.splash, fit: BoxFit.fitHeight),
        ),
        // foregroundDecoration: const BoxDecoration(
        //   image:
        //   DecorationImage(image: ImageString.splashGif,fit: F),
        // ),
        child:  Center(
          child: Transform.scale(
            scale: 1.3,
            child: const SizedBox(
              child: Image(
                image: ImageString.splashGif,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
