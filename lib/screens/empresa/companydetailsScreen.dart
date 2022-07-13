// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/components/LabelItemWithIcon.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import '../../components/CustomPageDivider.dart';
import '../../components/CustomPageTitle.dart';
import '../../components/PlanBox.dart';
import '../../components/SocialMediaBox.dart';
import '../../tools/size_constants.dart';

class CompanyDetailsScreen extends StatelessWidget {
  const CompanyDetailsScreen({Key? key}) : super(key: key);

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
        padding: cScreenPadding,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomPageTitle(
                title: 'Detalhes',
                subTitle: 'da empresa',
              ),
            ),
            Column(
              children: [
                LabelItemWithIcon(
                    label: 'Empresa name placeholder',
                    IconPath: 'assets/images/company-grey-icon.svg'),
                LabelItemWithIcon(
                    label: 'Rua endereço empresa número 2',
                    IconPath: 'assets/images/location-grey-icon.svg'),
                LabelItemWithIcon(
                    label: 'empresa@email.com',
                    IconPath: 'assets/images/network-grey-icon.svg'),
                LabelItemWithIcon(
                    label: '(31) 1234 - 1234',
                    IconPath: 'assets/images/phone-grey-icon.svg'),
                LabelItemWithIcon(
                    label: 'siteempresa@site.com.br',
                    IconPath: 'assets/images/web-grey-icon.svg'),
              ],
            ),
            CustomPageDivider(
              marginTop: 30.0,
              marginBottom: 40.0,
              text: 'Redes',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaBox(
                  imagePath: 'assets/images/facebook-icon.svg',
                  press: () {},
                ),
                SizedBox(
                  width: 10.0,
                ),
                SocialMediaBox(
                  imagePath: 'assets/images/instagram-icon.svg',
                  press: () {},
                ),
              ],
            ),
            CustomPageDivider(
              marginTop: 40.0,
              marginBottom: 20.0,
              text: 'Plano',
            ),
            PlanBox(
              title: 'Plano Standart',
              status: 'Inativo',
              date_start: 'Início: 31/05/2022',
              date_end: 'Término: 06/06/2022',
              date_updated: '06/06/2022',
            ),
          ],
        ),
      ),
    );
  }
}