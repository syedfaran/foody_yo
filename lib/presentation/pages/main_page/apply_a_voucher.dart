import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/widgets/simple_appbar.dart';

class ApplyAVoucher extends StatelessWidget {
  const ApplyAVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const SimpleAppBar(
        title: AppString.applyAVoucher,
      ),
      body: Container(),
    ));
  }
}
