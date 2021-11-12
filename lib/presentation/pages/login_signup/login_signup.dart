import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart ';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/widgets/foody_decorated_tab_box.dart';
import 'package:foody_yo/presentation/widgets/plain_textfield.dart';


class LoginORSignup extends StatelessWidget {
  const LoginORSignup({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
           FoodyDecoratedTabBox(),
           SizedBox(height: 150),
           PlainTextField(textInputType: TextInputType.number),
        ],
      ),
    );
  }
}
