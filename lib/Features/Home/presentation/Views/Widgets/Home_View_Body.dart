import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_App_Bar.dart';

import 'package:notes_app/Features/Home/presentation/Views/Widgets/Note_Item_List_View.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 20),
          Expanded(child: NoteItemListView()),
        ],
      ),
    );
  }
}
