import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../tools/textStyles_constants.dart';

class CustomDashboardBox extends StatelessWidget {

  Color? backgroundColor;
  Color? SubBoxBackgroundColor;
  String IconPath;
  String number;
  String description;

  CustomDashboardBox({
    Key? key,
    required this.backgroundColor,
    required this.SubBoxBackgroundColor,
    required this.IconPath,
    required this.number,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 6,
            spreadRadius: 0.0,
            offset: Offset(
              3.0,
              3.0,
            ),
          ),
        ],
        color: backgroundColor,
      ),
      width: 160.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: SubBoxBackgroundColor,
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(IconPath),
                  ),
                ),
                Text(
                  number,
                  style: tDashboardNumber,
                ),
              ],
            ),
            Text(
              description,
              style: tDashboardBoxDescript,
            ),
          ],
        ),
      ),
    );
  }
}