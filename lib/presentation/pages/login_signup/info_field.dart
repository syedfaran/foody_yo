import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/route_string.dart';
import 'package:foody_yo/presentation/widgets/heading_button.dart';
import 'package:foody_yo/presentation/widgets/plain_textfield.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class InFoField extends StatelessWidget {
  const InFoField({Key? key}) : super(key: key);
  final _sizedBox = const SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150),
        const PlainTextField(hintText: AppString.firstName),
        _sizedBox,
        const PlainTextField(hintText: AppString.lastName),
        _sizedBox,
        const PlainTextField(hintText: AppString.email),
        _sizedBox,
        const PlainTextField(hintText: AppString.password),
        _sizedBox,
        const PlainTextField(hintText: AppString.confirm),
        const Spacer(),
        HeadingButton(text: AppString.signUp, onPressed: (){
          Navigator.pushNamed(context, RouteString.main);
        }),
        const Spacer(),
      ],
    );
  }
}