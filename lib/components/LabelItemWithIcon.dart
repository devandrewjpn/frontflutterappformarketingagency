import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../tools/textStyles_constants.dart';

class LabelItemWithIcon extends StatelessWidget {

  String label;
  String IconPath;

  LabelItemWithIcon({
    Key? key,
    required this.label,
    required this.IconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(IconPath),
            SizedBox(width: 10.0,),
            Text(
              label,
              style: tPrimarySubTitle,
            ),
          ],
        ),
      ),
    );
  }
}
