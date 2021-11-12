import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';

class FoodyDecoratedTabBox extends StatelessWidget {
  const FoodyDecoratedTabBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: Colors.black45, width: .1),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18)),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 0.75),
                blurRadius: 10)
          ]),
    );
  }
}
