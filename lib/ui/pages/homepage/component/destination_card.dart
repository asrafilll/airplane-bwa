import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    Key? key,
    required this.img,
    required this.city,
    required this.name,
  }) : super(key: key);

  final String img;
  final String name;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 323,
      margin: EdgeInsets.only(left: defaultMargin),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: const DecorationImage(
                image: AssetImage('assets/image_destination1.png'),
              ),
            ),
            child: Container(
              width: 55,
              height: 30,
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.only(right: 2),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.pnh'),
                      ),
                    ),
                  ),
                  Text(
                    '4.8',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            'Lake Ciliwung',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Tangerang',
            style: greyTextStyle.copyWith(
              fontWeight: light,
            ),
          )
        ],
      ),
    );
  }
}
