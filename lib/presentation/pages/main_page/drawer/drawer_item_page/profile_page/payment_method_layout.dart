import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/big_button.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class PaymentMethodLayout extends StatelessWidget {
  const PaymentMethodLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.grey[350],
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                const Align(
                    alignment: Alignment.centerLeft,
                    child: SimpleText(AppString.myCards)),
                const SizedBox(height: 10),
              ])),
              // SliverList(
              //     delegate: SliverChildBuilderDelegate(
              //         (context, index) => Text('dada'))),
            ],
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          child: Column(
            children: [
              Row(
                children: const [
                  SimpleText(AppString.addNewCard),
                  Spacer(),
                  Icon(
                    Icons.add,
                    color: AppColor.blackColor,
                    size: 35,
                  )
                ],
              ),
              const Spacer(),
              BigButton(text: AppString.addNow, onPressed: () {}),
            ],
          ),
        )),
      ],
    );
  }
}
