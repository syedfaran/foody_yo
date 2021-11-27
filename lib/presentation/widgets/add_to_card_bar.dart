import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/route_string.dart';
import 'package:foody_yo/presentation/pages/main_page/food_panda/panda_widget/category_section.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class ViewYourCartButton extends StatelessWidget {
  const ViewYourCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RouteString.cart);
      },
      child: Container(
        height: 60,
        width: 390,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(color: AppColor.mainGreen,borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              child: const SimpleText('1',color: AppColor.whiteTextColor,),
              decoration:  BoxDecoration(
                color: Colors.green[200]!,
                shape: BoxShape.circle,
              ),
            ),
            const  Expanded(child:  SimpleText(AppString.viewYourCart,color: AppColor.whiteTextColor)),
            const SimpleText('Rs. 250.00',color: AppColor.whiteTextColor),
          ],
        ),
      ),
    );
  }
}
