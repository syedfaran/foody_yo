import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/login_signup/phone_number.dart';
import 'package:foody_yo/presentation/pages/login_signup/pin_code.dart';
import 'package:foody_yo/presentation/widgets/plain_textfield.dart';

import '../enums.dart';
import 'info_field.dart';

class SignUpLayout extends StatelessWidget {
  final EnumSignup enumSignup;

  const SignUpLayout({Key? key, this.enumSignup = EnumSignup.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return enumSignup == EnumSignup.phoneNumber
        ? const PhoneNumber()
        : enumSignup == EnumSignup.pinCode
            ? const PinPutTest()
            : enumSignup == EnumSignup.infoField
                ? const InFoField()
                : const Text('some Thing Went Wrong');
  }
}
