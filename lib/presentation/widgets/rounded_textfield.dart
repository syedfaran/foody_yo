import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';

class RoundedTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final double width;
  final double verticalPadding;
  final FontWeight? fontWeight;
  final Color? fontColor;

  const RoundedTextField(
      {Key? key,
      this.icon,
      this.hintText,
      this.width = 330,
      this.verticalPadding = 5,
      this.fontWeight,
      this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: verticalPadding),
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: AppColor.mainGreen, width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            icon,
            color: AppColor.mainGreen,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: fontColor, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
