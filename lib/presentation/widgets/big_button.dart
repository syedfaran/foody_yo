import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';

class BigButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final double height;
  final double width;
  const BigButton({Key? key, required this.text, required this.onPressed,this.width=380,this.height=75})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
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
