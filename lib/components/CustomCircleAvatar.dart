import 'package:flutter/material.dart';

import '../tools/colors_constants.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // ignore: prefer_const_literals_to_create_immutables
        // ignore: prefer_const_constructors
        // ignore: prefer_const_literals_to_create_immutables
        gradient: const LinearGradient(colors: [
          kPrimaryColor,
          kPrimaryColorDark,
          kPrimaryColorDarker,
        ]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/$imagePath'),
              minRadius: 35.0,
            ),
          ),
        ),
      ),
    );
  }
}
