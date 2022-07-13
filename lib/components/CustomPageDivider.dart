import 'package:flutter/material.dart';

import '../tools/textStyles_constants.dart';

class CustomPageDivider extends StatelessWidget {
  CustomPageDivider(
      {required this.marginTop,
      required this.marginBottom,
      required this.text});

  String text;
  double marginTop;
  double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
      child: Row(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black.withOpacity(.2),
                )),
          ),
          Text(
            text,
            style: tPrimarySubTitle,
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black.withOpacity(.2),
                )),
          ),
        ],
      ),
    );
  }
}
