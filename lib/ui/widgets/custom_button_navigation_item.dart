import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonNavItem extends StatelessWidget {
  const CustomButtonNavItem({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
  }) : super(key: key);

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: defaultMargin,
          height: defaultMargin,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ],
    );
  }
}
