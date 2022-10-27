import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page/detail_content_section.dart';
import 'package:airplane/ui/pages/detail_page/detail_header_section.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          DetailHeaderSection(),
          DetailContentSection(),
        ],
      ),
    );
  }
}
