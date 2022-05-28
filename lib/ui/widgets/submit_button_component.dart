import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.pageNavigation,
  }) : super(key: key);

  final String pageNavigation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, pageNavigation);
        },
        child: Text(
          "Get Started",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
