import 'package:flutter/material.dart';

import '../tools/textStyles_constants.dart';

class ProjectItemCardBox extends StatelessWidget {
  ProjectItemCardBox(
      {required this.imagePath,
      required this.cardTitle,
      required this.status,
      required this.statusColor,
      required this.timing,
      required this.press});

  String imagePath;
  String cardTitle;
  String status;
  Color statusColor;
  String timing;
  VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 10,
                    spreadRadius: 0.0,
                    offset: Offset(
                      3.0,
                      12.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  cardTitle,
                  style: tProjectCardTitle,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  status,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: statusColor),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  timing,
                  style: tPrimarySubTitle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}