// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import 'package:socialmediagestor/tools/size_constants.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import '../../components/CustomPageTitle.dart';
import '../../components/NotificationCard.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  
  List notificationsList = [];

  Future<void> readJsonFile() async {
    final String res =
        await rootBundle.loadString('assets/json/notificationsData.json');
    final notificationsData = await json.decode(res);

    setState(() {
      notificationsList = notificationsData['notifications'];
    });
  }

  Future refresh() async {
    setState(() {
      notificationsList = notificationsList = [];
    });
  }

  Future cleanList() async {
    setState(() {
      notificationsList = notificationsList = [];
    });
  }

  @override
  void initState() {
    readJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const BottomNavButton(),
      bottomNavigationBar: const BottomAppBar(
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
                title: 'Notificações',
                subTitle: '',
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  cleanList();
                },
                child: Text(
                  'Limpar',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: refresh,
                child: ListView.builder(
                  itemCount: notificationsList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return NotificationCard(
                      title: notificationsList[index]["title"],
                      created_at: notificationsList[index]["created_at"],
                      text: notificationsList[index]["description"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
