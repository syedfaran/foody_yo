import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';


class CartPaymentInfo extends StatelessWidget {
  final String option;
  final String? value;
  final EnumText enumText;
  final double fontSize;
  final Widget? widget;
  final EnumText valueEnum;
  final double valueSize;
  const CartPaymentInfo(
      {Key? key,
        required this.option,
         this.value,
        this.widget,
        this.valueSize = 22.0,
        this.valueEnum =EnumText.bold,
        this.enumText = EnumText.bold,
        this.fontSize = 22.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          SimpleText(
            option,
            fontSize: fontSize,
            enumText: enumText,
          ),
          const Spacer(),
          value!=null?SimpleText(
            value!,
            fontSize: valueSize,
            enumText: valueEnum,
          ):const SizedBox.shrink(),
          widget!=null?widget!:const SizedBox.shrink(),
        ],
      ),
    );
  }
}