import 'package:flutter/material.dart';
import 'package:notes_app/Core/consts.dart';

class CustomTextFiled extends StatelessWidget {
 const CustomTextFiled({
    super.key,
    required this.hint,
    this.maxlines = 1,
    this.onsaved, this.onChanged,
  });
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field Is Required";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onsaved,
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
