import 'package:flutter/material.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/main_appbar.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class MainPage extends StatelessWidget {
  final Animation animation;
  final AnimationController animationController;

  const MainPage(this.animation, this.animationController, {Key? key})
      : super(key: key);
  final _sizedBox = const SizedBox(width: 10);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.translationValues(
              (1 - animation.value) * 1000, (1 - animation.value) * 500, 0)
            ..scale(animation.value),
          // transform: Matrix4.translationValues(300, 150, 0)..scale(0.7),
          child: child,
        );
      },
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        appBar: MainAppBar(controller: animationController),
        body: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Align(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  height: 240,
                  width: 370,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:   EdgeInsets.only(left: 16.0),
                        child:  SimpleText('North Town',enumText: EnumText.extraBold,fontSize: 22),
                      ),
                      Padding(
                        padding:  const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            const Icon(Icons.star,size: 18,),
                            _sizedBox,
                            RichText(
                                text: const TextSpan(
                                    text: '4.5',
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(text: '(1k+)'),
                                ])),
                            _sizedBox,
                            const Image(image: ImageString.bike, height: 15),
                            _sizedBox,
                            const SimpleText('Rs. 45'),
                            _sizedBox,
                            const Image(
                              image: ImageString.prepare,
                              height: 15,
                            ),
                            _sizedBox,
                            const SimpleText('20 min'),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 180,
                          width: 370,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: ImageString.pitaRoll,fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow:  const [
                            BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0, 5.0),
                          )
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}


