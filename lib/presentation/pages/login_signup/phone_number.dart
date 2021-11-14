import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/widgets/plain_textfield.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 150),
        SizedBox(child: PlainTextField(textInputType: TextInputType.number)),
      ],
    );
  }
}