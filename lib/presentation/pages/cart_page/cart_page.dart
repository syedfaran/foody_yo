import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/widgets/simple_appbar.dart';


class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: AppString.cart,),
      body: Row(
        children: [],
      ),
    );
  }
}
