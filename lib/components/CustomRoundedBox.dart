import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tools/colors_constants.dart';

class CustomRoundedBox extends StatelessWidget {

  VoidCallback? onpress;
  String iconPath;

  CustomRoundedBox({
    Key? key,
    required this.onpress,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        transform: Matrix4.translationValues(0.0, -60.0, 0.0),
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(.2),
              blurRadius: 20,
              spreadRadius: 5.0,
              offset: Offset(
                0.0,
                12.0,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child:
              SvgPicture.asset(iconPath),
        ),
      ),
    );
  }
}