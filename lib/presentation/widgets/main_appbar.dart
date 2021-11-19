import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/rounded_textfield.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AnimationController? controller;

  const MainAppBar({Key? key, this.controller}) : super(key: key);
  final _sizedBox = const SizedBox(width: 10);

  @override
  Widget build(BuildContext context) {
    bool tog = true;
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
        decoration: const BoxDecoration(
          color: AppColor.mainGreen,
          //image: DecorationImage(image: ImageString.appBarBackGround),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(flex: 3),
            Row(
              children: [
                Center(
                  child: GestureDetector(
                      onTap: () {
                        tog = !tog;
                        tog ? controller!.forward() : controller!.reverse();
                      },
                      child: AnimatedIcon(
                          color: AppColor.whiteColor,
                          size: 32,
                          icon: AnimatedIcons.menu_close,
                          progress: controller!)),
                ),
                const Spacer(),
                const Image(image: ImageString.navigation, width: 30),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: RoundedTextField(
                    width: 250,
                    hintText: 'Al haj Akhtar',
                  ),
                ),
                const Spacer(),
                const Image(image: ImageString.heart, width: 30),
                const Spacer(),
                const Image(image: ImageString.cart, width: 30),
              ],
            ),
            const Spacer(flex: 3),
            const SimpleText(AppString.deliciousFoodForYou,
                textAlign: TextAlign.start,
                enumText: EnumText.extraBold,
                fontSize: 28,
                color: AppColor.whiteTextColor),
            const Spacer(),
            const RoundedTextField(
                width: 330, hintText: AppString.search, icon: Icons.search),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(double.infinity, 300);
}
