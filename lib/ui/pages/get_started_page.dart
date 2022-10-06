import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly like a bird",
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Explore new world with us and let\nyourself get an amazing experiences",
                  textAlign: TextAlign.center,
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 16,
                  ),
                ),
                CustomButton(
                  width: 220,
                  onPressed: () => Navigator.pushNamed(context, '/sign-up'),
                  title: 'Get Started',
                  margin: const EdgeInsets.only(top: 50, bottom: 80),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
