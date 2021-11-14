import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/rounded_textfield.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);
  final _sizedBox = const SizedBox(width: 10);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      actions: const [
        Spacer(flex: 3),
        Image(image: ImageString.navigation, width: 30),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: RoundedTextField(
            width: 250,
            hintText: 'Al haj Akhtar',
          ),
        ),
        Spacer(),
        Image(image: ImageString.heart, width: 30),
        Spacer(),
        Image(image: ImageString.cart, width: 30),
        Spacer(),
      ],
      flexibleSpace: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0),
        decoration: const BoxDecoration(
          color: AppColor.mainGreen,
          //image: DecorationImage(image: ImageString.appBarBackGround),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Spacer(flex: 3),
            SimpleText(AppString.deliciousFoodForYou,
                textAlign: TextAlign.start,
                enumText: EnumText.extraBold,
                fontSize: 24,
                color: AppColor.whiteTextColor),
            Spacer(),
            RoundedTextField(
                width: 330, hintText: AppString.search, icon: Icons.search),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 250);
}
