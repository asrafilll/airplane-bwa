import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/homepage/component/destination_tile.dart';
import 'package:flutter/material.dart';

class NewDestinationComponent extends StatelessWidget {
  const NewDestinationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 18,
            ),
          ),
          const DestinationTile(
            imgUrl: 'assets/image_destination6.png',
            place: 'Danau Beratan',
            city: 'Singaraja',
            rating: 4.8,
          ),
          const DestinationTile(
            imgUrl: 'assets/image_destination7.png',
            place: 'Sydney Opera',
            city: 'Australia',
            rating: 4.7,
          ),
          const DestinationTile(
            imgUrl: 'assets/image_destination8.png',
            place: 'Roma',
            city: 'Italy',
            rating: 4.8,
          ),
          const DestinationTile(
            imgUrl: 'assets/image_destination9.png',
            place: 'Payung Teduh',
            city: 'Singapura',
            rating: 4.5,
          ),
          const DestinationTile(
            imgUrl: 'assets/image_destination10.png',
            place: 'Hill Hey',
            city: 'Monaco',
            rating: 4.7,
          ),
        ],
      ),
    );
  }
}
