import 'package:flutter/material.dart';

import '../tools/colors_constants.dart';
import '../tools/textStyles_constants.dart';

class NotificationCard extends StatelessWidget {

  NotificationCard({required this.title, required this.created_at, required this.text});
  
  String title;
  String created_at;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.05, 0.03],
            colors: [kSuccessColor, Colors.white]),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 10,
            spreadRadius: 0.0,
            offset: Offset(
              6.0,
              9.0,
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: tProjectCardTitle,
                ),
                Text(created_at),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              text,
              style: tDashboardBoxDescript,
            )
          ],
        ),
      ),
    );
  }
}
