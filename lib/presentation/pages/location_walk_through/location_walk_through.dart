import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/constants/route_string.dart';
import 'package:foody_yo/presentation/widgets/button_one.dart';

class LocationWalkThrough extends StatelessWidget {
  const LocationWalkThrough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            ImageString.location,
            height: 350,
            width: 300,
          ),
          const Text(
            AppString.findRestaurant,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 34),
          ),
          const SizedBox(height: 20),
          const Text(
            AppString.locationDescription,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          ),
          const SizedBox(height: 100),
          ButtonOne(
              text: AppString.allowAccessLocation,
              onPressed: () {
                Navigator.pushNamed(context, RouteString.map, arguments: true);
              }),
          const SizedBox(height: 30),
          const Text(
            AppString.enterMyLocation,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ],
      ),
    );
  }
}
