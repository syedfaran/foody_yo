import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class Badge extends StatelessWidget {
  const Badge({Key? key}) : super(key: key);
  static const List<String> _badgeList = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
              const SimpleText(AppString.badgeDesc)
            ])),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return BadgeAvatar(

              );
            },
            childCount: 20,
          ),
        )
      ],
    );
  }
}

class BadgeAvatar extends StatelessWidget {
  const BadgeAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: AppColor.whiteColor,
      radius: 90,
      backgroundImage: ImageString.vg,
    );
  }
}
