import 'package:flutter/material.dart';


class RoundedTextField extends StatelessWidget {
  final String? hintText;
  final IconData icon;
  final double width;
  const RoundedTextField({Key? key,required this.icon,this.hintText,this.width=330}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            filled: true,
            suffixIcon:  Icon(icon),
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: hintText,
            contentPadding: const EdgeInsets.only(left: 30),
            fillColor: Colors.white70),
      ),
    );
  }
}
