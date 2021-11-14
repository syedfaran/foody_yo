import 'package:flutter/material.dart ';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: Container(),
    );
  }
}
