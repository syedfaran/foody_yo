import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/widgets/foody_tab_appbar.dart';
import 'package:foody_yo/presentation/widgets/heading_button.dart';
import 'package:foody_yo/presentation/widgets/plain_textfield.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';


class LoginLayout extends StatelessWidget {
  const LoginLayout({Key? key}) : super(key: key);
  final _sizeBox = const SizedBox(height: 30);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Spacer(flex: 3,),
        const PlainTextField(hintText: AppString.email),
        _sizeBox,
        const PlainTextField(hintText: AppString.password),
        _sizeBox,
        const SimpleText(AppString.loginWith,
            enumText: EnumText.extraBold, fontSize: 24),
        const Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: ImageString.google, height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: SimpleText(AppString.or,
                  enumText: EnumText.extraBold, fontSize: 22),
            ),
            Image(image: ImageString.facebook, height: 35),
          ],
        ),
        const Spacer(flex: 1),
        HeadingButton(text: AppString.login, onPressed: () {}),
        const Spacer(flex: 2),
      ],
    );
  }
}
