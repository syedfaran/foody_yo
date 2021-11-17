import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/big_button.dart';
import 'package:foody_yo/presentation/widgets/simple_appbar.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class CancelOrderPage extends StatefulWidget {
  const CancelOrderPage({Key? key}) : super(key: key);

  @override
  State<CancelOrderPage> createState() => _CancelOrderPageState();
}

class _CancelOrderPageState extends State<CancelOrderPage> {
  final _sizedBox = const SizedBox(height: 30);
  ValueNotifier<EnumCancelOrderOption> valueNotifier =
      ValueNotifier(EnumCancelOrderOption.optionOne);

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    EnumCancelOrderOption _character = EnumCancelOrderOption.optionOne;
    return Scaffold(
      appBar: const SimpleAppBar(title: AppString.canICancelMyOrder),
      body: Column(
        children: [
          _sizedBox,
          const SimpleText(AppString.cancelOrderDescription,
              enumText: EnumText.extraBold, fontSize: 24),
          _sizedBox,
          const SimpleText(AppString.whyDoYouWantToCancelYourOrder),
          _sizedBox,
          ValueListenableBuilder<EnumCancelOrderOption>(
            valueListenable: valueNotifier,
            builder: (context, selectedOption, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    FoodyRadioButton<EnumCancelOrderOption>(
                      text: AppString.optionOne,
                      value: EnumCancelOrderOption.optionOne,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        valueNotifier.value = value!;
                      },
                    ),
                    FoodyRadioButton<EnumCancelOrderOption>(
                      text: AppString.optionTwo,
                      value: EnumCancelOrderOption.optionTwo,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        valueNotifier.value = value!;
                      },
                    ),
                    FoodyRadioButton<EnumCancelOrderOption>(
                      text: AppString.optionThree,
                      value: EnumCancelOrderOption.optionThree,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        valueNotifier.value = value!;
                      },
                    ),
                    FoodyRadioButton<EnumCancelOrderOption>(
                      text: AppString.optionFour,
                      value: EnumCancelOrderOption.optionFour,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        valueNotifier.value = value!;
                      },
                    ),
                    FoodyRadioButton<EnumCancelOrderOption>(
                      text: AppString.optionFive,
                      value: EnumCancelOrderOption.optionFive,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        valueNotifier.value = value!;
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          const Spacer(),
          BigButton(text: AppString.confirm, onPressed: () {}),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}

class FoodyRadioButton<T> extends StatelessWidget {
  final String text;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const FoodyRadioButton(
      {Key? key,
      required this.value,
      required this.text,
      this.groupValue,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          SimpleText(text, textAlign: TextAlign.start, enumText: EnumText.bold),
      leading: Radio<T>(
        activeColor: AppColor.mainGreen,

        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
