import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        "Kezia Anne",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset('assets/icon_plane.png', width: 24),
                    const SizedBox(width: 6),
                    Text(
                      "Pay",
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 41),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style: whiteTextStyle.copyWith(fontWeight: light),
                ),
                Text(
                  "IDR 280.000.000",
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 26,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bonusInfo() {
      return Container(
        margin: const EdgeInsets.only(top: 80, bottom: 50),
        child: Column(
          children: [
            Text(
              "Big Bonus 🎉",
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "We give you early credit so that\nyou can buy a flight ticket",
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget bonusButton() {
      return Container(
        width: 220,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/get-started');
          },
          child: Text(
            "Start Fly Now",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonusInfo(),
            bonusButton(),
          ],
        ),
      ),
    );
  }
}
