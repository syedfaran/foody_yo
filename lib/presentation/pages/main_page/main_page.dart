import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';

class MainPage extends StatelessWidget {
  final Animation animation;
  final AnimationController animationController;
  const MainPage(this.animation,this.animationController,{Key? key}) : super(key: key);

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
        appBar: MainAppBar(controller: animationController),

      ),
    );
  }
}
