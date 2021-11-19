import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/back_arrow.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 10,
      centerTitle: true,
      flexibleSpace: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: Colors.black45, width: .1),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const ArrowBack(),
            const Spacer(),
            SimpleText(title,
                color: AppColor.mainGreen,
                fontSize: 24,
                enumText: EnumText.extraBold),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 120);
}
