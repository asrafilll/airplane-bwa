import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_navigation_item.dart';
import 'package:flutter/material.dart';

class CustomButtonNavigation extends StatelessWidget {
  const CustomButtonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButtonNavItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            CustomButtonNavItem(
              imageUrl: 'assets/icon_booking.png',
            ),
            CustomButtonNavItem(
              imageUrl: 'assets/icon_card.png',
            ),
            CustomButtonNavItem(
              imageUrl: 'assets/icon_setting.png',
            ),
          ],
        ),
      ),
    );
  }
}
