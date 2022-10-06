import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_navigation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: const [
          Text('Main Page'),
          CustomButtonNavigation(),
        ],
      ),
    );
  }
}
