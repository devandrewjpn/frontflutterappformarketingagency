import 'package:flutter/material.dart';

import '../tools/textStyles_constants.dart';

class CustomPageTitle extends StatelessWidget {
  String title;
  String subTitle;

  CustomPageTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          title,
          style: tPrimaryTextTitle,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20.0),
          transform: Matrix4.translationValues(0.0, -10, 0.0),
          child: Text(
            subTitle,
            style: tPrimarySubTitle,
          ),
        ),
      ],
    );
  }
}
