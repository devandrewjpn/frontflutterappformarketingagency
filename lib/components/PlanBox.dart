import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tools/colors_constants.dart';
import '../tools/textStyles_constants.dart';

class PlanBox extends StatelessWidget {
  String title;
  String status;
  String date_start;
  String date_end;
  String date_updated;

  PlanBox({
    required this.title,
    required this.status,
    required this.date_start,
    required this.date_end,
    required this.date_updated,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 15.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.05, 0.03],
              colors: [kDangerColor, Colors.white]),
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
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/plan-star-icon.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        title,
                        style: tProjectCardTitle,
                      ),
                    ],
                  ),
                  Text(
                    status,
                    style: tDashboardBoxDescript,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        date_start,
                        style: tLittleLabelLight,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        date_end,
                        style: tLittleLabelLight,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Última atualização:',
                        style: tLittleLabelLight,
                      ),
                      Text(
                        date_updated,
                        style: tLittleLabelLight,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
