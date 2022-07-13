// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialmediagestor/components/LabelItemWithIcon.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import 'package:socialmediagestor/tools/size_constants.dart';
import 'package:socialmediagestor/tools/textStyles_constants.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import 'dart:convert';
import '../../components/CustomPageTitle.dart';
import '../../components/ProjectItemCardBox.dart';

class ProjectDetailsScreen extends StatefulWidget {
  const ProjectDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProjectDetailsScreen> createState() => _ProjectDetailsScreenState();
}

class _ProjectDetailsScreenState extends State<ProjectDetailsScreen> {
  List projectItemList = [];

  Future<void> readJsonFile() async {
    final String res = await rootBundle.loadString('assets/json/itemData.json');
    final projectsData = await json.decode(res);

    setState(() {
      projectItemList = projectsData['items'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    readJsonFile();
  }

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
                subTitle: 'do projeto',
              ),
            ),
            Column(
              children: [
                LabelItemWithIcon(
                    label: 'Empresa name placeholder',
                    IconPath: 'assets/images/company-grey-icon.svg'),
                LabelItemWithIcon(
                    label: 'Plano standart',
                    IconPath: 'assets/images/plan-grey-icon.svg'),
                LabelItemWithIcon(
                    label: '19/05 - 30/05/2022',
                    IconPath: 'assets/images/calendar-grey-icon.svg'),
                LabelItemWithIcon(
                    label: 'Em andamento',
                    IconPath: 'assets/images/status-grey-icon.svg'),
              ],
            ),
            SingleChildScrollView(
              child: DefaultTabController(
                initialIndex: 1,
                length: 5,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TabBar(
                      labelColor: kPrimaryColorDarker,
                      isScrollable: true,
                      // igno
                      //re: prefer_const_literals_to_create_immutables
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        Tab(
                          child: Text('Aguardando resposta',
                              style: tTabsTitle),
                        ),
                        Tab(
                          child: Text('Correção solicitada',
                              style: tTabsTitle),
                        ),
                        Tab(
                          child: Text('Aguardando administrador',
                              style: tTabsTitle),
                        ),
                        Tab(
                          child: Text('Aprovados', style: tTabsTitle),
                        ),
                        Tab(
                          child: Text('Reprovados', style: tTabsTitle),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 380,
                      child: TabBarView(
                        children: [
                          Container(
                            height: 380,
                            child: ListView.builder(
                              itemCount: projectItemList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, index) {
                                return ProjectItemCardBox(
                                  imagePath:
                                      'assets/images/${projectItemList[index]["image"]}',
                                  cardTitle: projectItemList[index]["title"],
                                  timing: '11 minutos atrás',
                                  press: () {
                                    Navigator.pushNamed(
                                        context, '/item_detail');
                                  },
                                  status: 'Em andamento',
                                  statusColor: kWarningColor,
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 380,
                            child: ListView.builder(
                              itemCount: projectItemList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, index) {
                                return ProjectItemCardBox(
                                  imagePath:
                                      'assets/images/${projectItemList[index]["image"]}',
                                  cardTitle: projectItemList[index]["title"],
                                  timing: '11 minutos atrás',
                                  press: () {
                                    Navigator.pushNamed(
                                        context, '/item_detail');
                                  },
                                  status: 'Em andamento',
                                  statusColor: kWarningColor,
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 380,
                            child: ListView.builder(
                              itemCount: projectItemList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, index) {
                                return ProjectItemCardBox(
                                  imagePath:
                                      'assets/images/${projectItemList[index]["image"]}',
                                  cardTitle: projectItemList[index]["title"],
                                  timing: '11 minutos atrás',
                                  press: () {
                                    Navigator.pushNamed(
                                        context, '/item_detail');
                                  },
                                  status: 'Em andamento',
                                  statusColor: kWarningColor,
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 380,
                            child: ListView.builder(
                              itemCount: projectItemList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, index) {
                                return ProjectItemCardBox(
                                  imagePath:
                                      'assets/images/${projectItemList[index]["image"]}',
                                  cardTitle: projectItemList[index]["title"],
                                  timing: '11 minutos atrás',
                                  press: () {
                                    Navigator.pushNamed(
                                        context, '/item_detail');
                                  },
                                  status: 'Em andamento',
                                  statusColor: kWarningColor,
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 380,
                            child: ListView.builder(
                              itemCount: projectItemList.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, index) {
                                return ProjectItemCardBox(
                                  imagePath:
                                      'assets/images/${projectItemList[index]["image"]}',
                                  cardTitle: projectItemList[index]["title"],
                                  timing: '11 minutos atrás',
                                  press: () {
                                    Navigator.pushNamed(
                                        context, '/item_detail');
                                  },
                                  status: 'Em andamento',
                                  statusColor: kWarningColor,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
