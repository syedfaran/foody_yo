import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinPutTest extends StatefulWidget {
  const PinPutTest({Key? key}) : super(key: key);

  @override
  PinPutTestState createState() => PinPutTestState();
}

class PinPutTestState extends State<PinPutTest> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColor.mainGreen),
    );
  }

  late final Timer _timer;
  int _start = 30;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _pinPutController.dispose();
    _pinPutFocusNode.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: const EdgeInsets.all(20.0),
            child: PinPut(
                fieldsCount: 4,
                onSubmit: (String pin) => _showSnackBar(pin, context),
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: _pinPutDecoration,
                selectedFieldDecoration: _pinPutDecoration,
                followingFieldDecoration: _pinPutDecoration),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    startTimer();
                  },
                  child: const SimpleText(AppString.resendCode, fontSize: 14),
                ),
                SimpleText("00:$_start", fontSize: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    //SystemChannels.textInput.invokeMethod('TextInput.hide');
    //   final snackBar = SnackBar(
    //     duration: const Duration(seconds: 3),
    //     content: Container(
    //       height: 80.0,
    //       child: Center(
    //         child: Text(
    //           'Pin Submitted. Value: $pin',
    //           style: const TextStyle(fontSize: 25.0),
    //         ),
    //       ),
    //     ),
    //     backgroundColor: Colors.deepPurpleAccent,
    //   );
    //   Scaffold.of(context)
    //     ..hideCurrentSnackBar()
    //     ..showSnackBar(snackBar);
    // }
  }
}
