import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../tools/colors_constants.dart';
import '../tools/textStyles_constants.dart';

class CustomProjectCard extends StatelessWidget {

  String projectTitle;
  String status;
  double percent;
  String percentLabel;
  String dateStart;
  String dateEnd;
  Color borderColor;
  VoidCallback? ontap;

  CustomProjectCard({
    Key? key,
    required this.projectTitle,
    required this.borderColor,
    required this.status,
    required this.percent,
    required this.percentLabel,
    required this.dateStart,
    required this.dateEnd,
    required this.ontap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.05, 0.03],
              colors: [borderColor, Colors.white]),
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    projectTitle,
                    style: tProjectCardTitle,
                  ),
                  Text(
                    status,
                    style: tDashboardBoxDescript,
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinearPercentIndicator(
                    padding: EdgeInsets.all(0),
                    width: 260,
                    percent: percent,
                    progressColor: kPrimaryColorDarker,
                    barRadius: Radius.circular(20),
                    animation: true,
                    animationDuration: 2,
                    widgetIndicator: Container(
                      transform:
                          Matrix4.translationValues(0.0, -2, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: kPrimaryColorDarker, width: 4),
                      ),
                      width: 15,
                      height: 15,
                    ),
                  ),
                  Text(
                    percentLabel,
                    style: TextStyle(color: kPrimaryColorDarker),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Início: $dateStart', style: tLittleLabelLight,),
                  Text('Término: $dateEnd', style: tLittleLabelLight,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
