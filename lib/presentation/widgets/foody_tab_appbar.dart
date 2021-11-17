import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/pages/enums.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class FoodyTabAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabBar;
  final String? title;
  const FoodyTabAppBar({Key? key, required this.tabBar,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      automaticallyImplyLeading: false,
      bottom: TabBar(
        tabs: tabBar,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4,
        indicatorColor: AppColor.mainGreen,
        padding: const EdgeInsets.only(bottom: 1.5),
      ),
      flexibleSpace: Container(
        child: Row(
          children: [
            IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
            const Spacer(),
            title==null?const SizedBox.shrink():SimpleText(title!,fontSize: 34,enumText: EnumText.extraBold),
            const Spacer(flex: 3),
          ],
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          border: Border.all(color: Colors.black45, width: .1),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 220);
}
