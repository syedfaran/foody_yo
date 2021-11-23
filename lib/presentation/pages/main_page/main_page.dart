import 'package:flutter/material.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';
import 'package:foody_yo/presentation/widgets/main_card.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

import 'food_panda/home_screen.dart';

class MainPage extends StatelessWidget {
  final Animation animation;
  final AnimationController animationController;

  const MainPage(this.animation, this.animationController, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.translationValues(
              (1 - animation.value) * 1000, (1 - animation.value) * 500, 0)
            ..scale(animation.value),
          // transform: Matrix4.translationValues(300, 150, 0)..scale(0.7),
          child: child,
        );
      },
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        appBar: MainAppBar(animationController: animationController),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return MainCard(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
              );
            }),
      ),
    );
  }
}
