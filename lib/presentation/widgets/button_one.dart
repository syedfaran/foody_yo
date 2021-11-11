import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';

class ButtonOne extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const ButtonOne({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 380,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: AppColor.whiteTextColor, fontSize: 26,fontWeight: FontWeight.w900)),
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
           // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            primary: AppColor.mainGreen),
      ),
    );
  }
}
