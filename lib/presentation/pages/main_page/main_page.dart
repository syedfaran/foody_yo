import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))..forward();
    animation = Tween(begin: 1.0, end: 0.7).animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
        child: const Scaffold(
          appBar: MainAppBar(),
        ));
  }
}
