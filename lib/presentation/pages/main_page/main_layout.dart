import 'package:flutter/material.dart ';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'drawer/drawer_item_page/drawer_page.dart';
import 'main_page.dart';

class MainLayout extends StatefulWidget {
  final bool guest;

  const MainLayout(this.guest, {Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    animation = Tween(begin: 1.0, end: 0.69).animate(animationController);
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          DrawerScreen(widget.guest),
           AnimatedBuilder(
             animation: animation,
             builder: (context,child){
               return Transform(
                 transform: Matrix4.translationValues(
                     (1 - animation.value) * 900, (1.11 - animation.value) * 500, 0)
                   ..scale(animation.value),
                 // transform: Matrix4.translationValues(300, 150, 0)..scale(0.7),
                 child: child,
               );
             },
             child: Container(
               decoration:  BoxDecoration(
                   color: AppColor.whiteColor.withOpacity(0.35),
                 borderRadius: BorderRadius.circular(20)
               ),
             ),
           ),
           MainPage(animation,animationController),
        ],
      ),
    );
  }
}
