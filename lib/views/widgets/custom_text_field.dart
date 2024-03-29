import 'package:flutter/material.dart';
import 'package:notes_app2/constants.dart';
 
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final void  Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:  onSaved,
      validator: (value)
      {
        if(value?.isEmpty??true)
        {
          return "Field is required";
        }
 
      },
      textAlignVertical: TextAlignVertical.center,
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
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
