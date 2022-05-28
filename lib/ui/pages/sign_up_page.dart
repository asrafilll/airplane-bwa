import 'package:airplane/ui/widgets/input_section_sign_up_component.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            const InputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        "Join us and get\nyour next journey",
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget tacButton() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 73,
      ),
      child: Text(
        "Terms and condition",
        style: greyTextStyle.copyWith(
          fontWeight: light,
          fontSize: 16,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
