// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import '../components/BottomNavBar.dart';
import '../components/BottomNavButton.dart';
import '../components/CustomCircleAvatar.dart';
import '../components/CustomDashboardBox.dart';
import '../components/CustomHorizontalCarousel.dart';
import '../components/DashboardProjectItemCard.dart';
import '../components/LabelPageDivider.dart';
import '../tools/textStyles_constants.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const BottomNavButton(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: BottomNavBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, bottom: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        CustomCircleAvatar(
                            imagePath: 'captain-jacksparrow.png'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Capitão Jack',
                              style: tPrimaryTextTitle,
                            ),
                            Text(
                              'Bem vindo(a),',
                              style: tPrimarySubTitle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/logout');
                      },
                      child: SvgPicture.asset(
                        'assets/images/logout.svg',
                        width: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                LabelPageDivider(
                  label: 'Alguns status',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CustomHorizontalCarousel(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 150.0,
                    children: <Widget>[
                      CustomDashboardBox(
                        backgroundColor: kPrimaryColor.withOpacity(.23),
                        SubBoxBackgroundColor: kPrimaryColor,
                        IconPath: 'assets/images/dashboard-cards-icon.svg',
                        number: '12',
                        description: 'Itens em produção',
                      ),
                      CustomDashboardBox(
                        backgroundColor: kDangerColor.withOpacity(.23),
                        SubBoxBackgroundColor: kDangerColor,
                        IconPath: 'assets/images/dashboard-image-icon.svg',
                        number: '7',
                        description: 'Itens pendentes aprovação',
                      ),
                      CustomDashboardBox(
                        backgroundColor: kWarningColor.withOpacity(.33),
                        SubBoxBackgroundColor: kWarningColor.withOpacity(.50),
                        IconPath: 'assets/images/dashboard-cards-icon.svg',
                        number: '12',
                        description: 'Itens aprovados',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                LabelPageDivider(
                  label: 'Projetos recentes',
                ),
                SizedBox(
                  width: 350,
                  height: 280,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      DashboardProjectItemCard(
                        ontap: () {
                          Navigator.pushNamed(context, '/item_detail');
                        },
                        title: 'Nome projeto (?)',
                        status: 'Em andamento',
                        percent: 0.7,
                        percentText: '78.6%',
                        progressColor: kWarningColor,
                      ),
                      DashboardProjectItemCard(
                        ontap: () {},
                        title: 'Nome projeto (?)',
                        status: 'Concluido',
                        percent: 1,
                        percentText: '100%',
                        progressColor: kSuccessColor,
                      ),
                      DashboardProjectItemCard(
                        ontap: () {},
                        title: 'Nome projeto (?)',
                        status: 'Em andamento',
                        percent: 0.23,
                        percentText: '23.9%',
                        progressColor: kDangerColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
