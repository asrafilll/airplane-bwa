import 'package:airplane/ui/widgets/submit_button_component.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class InputSection extends StatelessWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        children: [
          inputItem(
            inputTitle: 'Full Name',
            hintText: 'Your Full Name',
          ),
          inputItem(
            inputTitle: 'Email Address',
            hintText: 'Your Work Email Address',
          ),
          inputItem(
            inputTitle: 'Password',
            hintText: 'Your Password',
            obscureText: true,
          ),
          inputItem(
            inputTitle: 'Hobby',
            hintText: 'Your Hobby',
          ),
          const SubmitButton(
            pageNavigation: '/bonus-page',
          ),
        ],
      ),
    );
  }
}

Widget inputItem({
  required String inputTitle,
  required String hintText,
  bool obscureText = false,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inputTitle, style: blackTextStyle),
        const SizedBox(height: 6),
        TextFormField(
          obscureText: obscureText,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your FullName',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: const BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
