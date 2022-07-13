
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../tools/textStyles_constants.dart';

class DashboardProjectItemCard extends StatelessWidget {

  String title;
  String status;
  double percent;
  String percentText;
  Color progressColor;
  VoidCallback? ontap;

  DashboardProjectItemCard({
    Key? key,
    required this.title,
    required this.status,
    required this.percent,
    required this.percentText,
    required this.progressColor,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
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
            ),
          ],
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: tProjectCardTitle,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Status: ',
                        style: tDashboardBoxDescriptBold,
                      ),
                      Text(
                        status,
                        style: TextStyle(
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: CircularPercentIndicator(
                  backgroundWidth: 4,
                  radius: 35.0,
                  circularStrokeCap: CircularStrokeCap.round,
                  lineWidth: 6.0,
                  percent: percent,
                  center: Text(percentText),
                  animation: true,
                  animationDuration: 2000,
                  startAngle: 0,
                  animateFromLastPercent: true,
                  progressColor: progressColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
