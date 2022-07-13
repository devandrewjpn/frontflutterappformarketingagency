import 'package:flutter/material.dart';

class CustomHorizontalCarousel extends StatelessWidget {
  EdgeInsetsGeometry? margin;
  double? height;
  List<Widget> children;

  CustomHorizontalCarousel({
    required this.margin,
    required this.height,
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: children,
      ),
    );
  }
}
