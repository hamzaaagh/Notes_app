import 'package:flutter/material.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Custom_Floating_Action_Button.dart';
import 'package:notes_app/Features/Home/presentation/Views/Widgets/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
