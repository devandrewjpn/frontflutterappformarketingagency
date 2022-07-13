import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSmallRoundedBox extends StatelessWidget {

  String iconPath;
  VoidCallback? onpress;

  CustomSmallRoundedBox({
    Key? key,
    required this.iconPath,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        transform: Matrix4.translationValues(0.0, -45.0, 0.0),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 6,
              spreadRadius: 0.0,
              offset: Offset(
                3.0,
                3.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SvgPicture.asset(iconPath),
        ),
      ),
    );
  }
}