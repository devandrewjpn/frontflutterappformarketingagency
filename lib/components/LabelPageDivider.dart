import 'package:flutter/material.dart';

import '../tools/textStyles_constants.dart';

class LabelPageDivider extends StatelessWidget {

  String label;

  LabelPageDivider({
    Key? key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: tPrimarySubTitle,
        ),
      ),
    );
  }
}
