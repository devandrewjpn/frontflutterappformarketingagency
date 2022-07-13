// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:socialmediagestor/components/LabelItemWithIcon.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import '../../components/CustomProjectCard.dart';
import '../../tools/textStyles_constants.dart';

class ProjectListScreen extends StatefulWidget {
  const ProjectListScreen({Key? key}) : super(key: key);

  @override
  State<ProjectListScreen> createState() => _ProjectListScreenState();
}

class _ProjectListScreenState extends State<ProjectListScreen> {
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
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 60),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Projetos',
                  style: tPrimaryTextTitle,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            LabelItemWithIcon(
              label: 'Em andamento',
              IconPath: 'assets/images/status-grey-icon.svg',
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  CustomProjectCard(
                    ontap: () {
                      Navigator.pushNamed(context, '/project_details');
                    },
                    projectTitle: 'Nome projeto?',
                    borderColor: kSuccessColor,
                    status: 'Ativo',
                    percent: 0.8,
                    percentLabel: '79%',
                    dateStart: '14/04/2022',
                    dateEnd: '24/04/2022',
                  ),
                  CustomProjectCard(
                    ontap: () {
                      Navigator.pushNamed(context, '/project_details');
                    },
                    projectTitle: 'Nome projeto?',
                    borderColor: kDangerColor,
                    status: 'Inativo',
                    percent: 1,
                    percentLabel: '100%',
                    dateStart: '14/04/2022',
                    dateEnd: '24/04/2022',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

