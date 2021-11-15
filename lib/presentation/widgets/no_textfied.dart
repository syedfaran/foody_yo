import 'package:flutter/material.dart';

class NumberTextField extends StatefulWidget {
  final String? hintText;
  final TextInputType? textInputType;
  const NumberTextField({Key? key, this.hintText,this.textInputType}) : super(key: key);

  @override
  State<NumberTextField> createState() => _NumberTextFieldState();
}

class _NumberTextFieldState extends State<NumberTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: '+92');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 320,
        child: TextField(
           controller: _controller,
          keyboardType: widget.textInputType,
          onChanged: (value){
            //print(value.substring(1));
          },
          decoration: InputDecoration(
              hintText: widget.hintText,
              contentPadding: const EdgeInsets.only(left: 15),
              hintStyle: const TextStyle(color: Colors.black)),
        ));
  }
}
