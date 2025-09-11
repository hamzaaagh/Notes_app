import 'package:flutter/material.dart';
import 'package:notes_app/Core/Widgets/Custom_Button.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Text_Filed.dart';

class CustomModelButtonSheet extends StatelessWidget {
  const CustomModelButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 3.5 / 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Addfrombuttunsheet(),
      ),
    );
  }
}

class Addfrombuttunsheet extends StatefulWidget {
  const Addfrombuttunsheet({super.key});

  @override
  State<Addfrombuttunsheet> createState() => _AddfrombuttunsheetState();
}

class _AddfrombuttunsheetState extends State<Addfrombuttunsheet> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidate = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          CustomTextFiled(
            hint: "Title",
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextFiled(
            hint: "content",
            maxlines: 4,
            onsaved: (value) {
              content = value;
            },
          ),
          Spacer(),
          CustomElevatedButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidate = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
