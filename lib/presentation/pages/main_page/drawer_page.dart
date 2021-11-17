import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/image_string.dart';
import 'package:foody_yo/constants/route_string.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/widgets/drawer_item.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);
  final SizedBox _sizedBox = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightGreen,
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.whiteColor,
            ),
          ),
          _sizedBox,
          const SimpleText('Hafiz Haider',
              enumText: EnumText.extraBold, color: AppColor.whiteTextColor),
          _sizedBox,
          Container(
            height: 80,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            color: AppColor.mainGreen.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SimpleText(AppString.foodyyo_pay,
                    enumText: EnumText.extraBold,
                    color: AppColor.whiteTextColor,
                    fontSize: 24),
                SimpleText(AppString.creditAndPaymentMethod,
                    enumText: EnumText.bold,
                    color: AppColor.whiteTextColor,
                    fontSize: 17),
              ],
            ),
          ),
          const DrawerItem(
            text: AppString.favourites,
            image: ImageString.heart,
          ),
          const DrawerItem(
            text: AppString.order,
            image: ImageString.heart,
          ),
          const DrawerItem(text: AppString.profile, image: ImageString.profile),
          const DrawerItem(text: AppString.address, image: ImageString.address),
          const DrawerItem(text: AppString.reward, image: ImageString.reward),
          const DrawerItem(
              text: AppString.vouchers, image: ImageString.voucher),
          DrawerItem(
            text: AppString.helpCenter,
            image: ImageString.reward,
            onTap: () => Navigator.pushNamed(context, RouteString.helpCenter),
          ),
          const Spacer(),
          const DrawerItem(text: AppString.settings),
          const DrawerItem(text: AppString.termsAndCondition),
          DrawerItem(
            text: AppString.logOut,
            onTap: () =>
                Navigator.pushNamed(context, RouteString.loginOrSignUp),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
