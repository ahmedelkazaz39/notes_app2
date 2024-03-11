import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        // contentPadding:
        //     EdgeInsets.symmetric(vertical: 5.0), // Adjust vertical padding

        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          const Color(0xff62FCD7),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? kPrimaryColor),
    );
  }
}
