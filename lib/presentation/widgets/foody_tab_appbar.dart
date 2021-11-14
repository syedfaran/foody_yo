import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';

class FoodyTabAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabBar;

  const FoodyTabAppBar({Key? key, required this.tabBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      bottom: TabBar(
        tabs: tabBar,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4,
        indicatorColor: AppColor.mainGreen,
        padding: const EdgeInsets.only(bottom: 1.5),
      ),
      flexibleSpace: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: Colors.black45, width: .1),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 220);
}
