import 'package:airplane/ui/pages/home_page/component/new_destination_component.dart';
import 'package:airplane/ui/pages/home_page/component/popular_destination_component.dart';
import 'package:flutter/material.dart';

import 'component/header_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HeaderHomeComponent(),
        PopularDestinationComponent(),
        NewDestinationComponent(),
      ],
    );
  }
}
