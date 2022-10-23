import 'package:airplane/ui/pages/homepage/component/destination_card.dart';
import 'package:flutter/material.dart';

class PopularDestinationComponent extends StatelessWidget {
  const PopularDestinationComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          DestinationCard(img: (''), city: '', name: 'name'),
          DestinationCard(img: (''), city: '', name: 'name'),
          DestinationCard(img: (''), city: '', name: 'name'),
          DestinationCard(img: (''), city: '', name: 'name'),
        ],
      ),
    );
  }
}
