import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class CartPaymentInfoVouch extends StatelessWidget {
  final String value;
  final double? fontSize;

  const CartPaymentInfoVouch({Key? key, required this.value, this.fontSize = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
                text: AppString.subtotal,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: AppString.inclVAT,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 16))
                ]),
          ),
          const Spacer(),
          SimpleText(value),
        ],
      ),
    );
  }
}