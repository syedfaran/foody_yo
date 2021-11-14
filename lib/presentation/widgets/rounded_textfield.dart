import 'package:flutter/material.dart';
import 'package:foody_yo/presentation/theme/app_color.dart';


class RoundedTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final double width;
  const RoundedTextField({Key? key, this.icon,this.hintText,this.width=330}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    child: Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child:  TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon:  Icon(icon),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[800]),

        ),
      ),
    ),
    //   child: TextField(
    //     decoration: InputDecoration(
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(18.0),
    //         ),
    //         filled: true,
    //         suffixIcon:  Icon(icon),
    //         hintStyle: TextStyle(color: Colors.grey[800]),
    //         hintText: hintText,
    //         contentPadding: const EdgeInsets.only(left: 30),
    //         fillColor: Colors.white70),
    //   ),
     );

  }
}


