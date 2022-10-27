import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page/component/destination_card.dart';
import 'package:flutter/material.dart';

class PopularDestinationComponent extends StatelessWidget {
  const PopularDestinationComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              img: ('assets/image_destination1.png'),
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              rating: 4.8,
            ),
            DestinationCard(
              img: ('assets/image_destination2.png'),
              name: 'White Houses',
              city: 'Spain',
              rating: 4.7,
            ),
            DestinationCard(
              img: ('assets/image_destination3.png'),
              name: 'Hill Hayo',
              city: 'Monaco',
              rating: 4.8,
            ),
            DestinationCard(
              img: ('assets/image_destination4.png'),
              name: 'Monarra',
              city: 'Japan',
              rating: 5.0,
            ),
            DestinationCard(
              img: ('assets/image_destination5.png'),
              name: 'Payung Teduh ',
              city: 'Singapore',
              rating: 4.8,
            ),
          ],
        ),
      ),
    );
  }
}
