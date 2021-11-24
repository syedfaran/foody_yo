import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';


class CartPaymentInfo extends StatelessWidget {
  final String option;
  final String value;
  final EnumText? enumText;
  final double? fontSize;

  const CartPaymentInfo(
      {Key? key,
        required this.option,
        required this.value,
        this.enumText = EnumText.bold,
        this.fontSize = 22})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          SimpleText(
            option,
            fontSize: fontSize!,
            enumText: enumText,
          ),
          const Spacer(),
          SimpleText(
            value,
            fontSize: fontSize!,
            enumText: enumText,
          )
        ],
      ),
    );
  }
}