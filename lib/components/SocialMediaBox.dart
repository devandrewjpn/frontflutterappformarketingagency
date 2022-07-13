import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaBox extends StatelessWidget {

  SocialMediaBox({required this.imagePath, required this.press});
  
  String imagePath;
  VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
              color: Colors.black.withOpacity(.1), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SvgPicture.asset(imagePath),
        ),
      ),
    );
  }
}