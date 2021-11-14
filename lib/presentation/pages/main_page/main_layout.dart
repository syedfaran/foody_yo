import 'package:flutter/material.dart ';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';

import 'drawer_page.dart';
import 'main_page.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        DrawerScreen(),
        MainPage(),
      ],
    );
  }
}
