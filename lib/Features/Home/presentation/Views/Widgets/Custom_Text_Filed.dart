import 'package:flutter/material.dart';
import 'package:notes_app/Core/consts.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      style: TextStyle(fontSize: 20),
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 20),
        border: buildField(),
        disabledBorder: buildField(),
        enabledBorder: buildField(Colors.white),
        focusedBorder: buildField(),
      ),
    );
  }
}

buildField([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? kprimarycolor),
    borderRadius: BorderRadius.circular(16),
  );
}
