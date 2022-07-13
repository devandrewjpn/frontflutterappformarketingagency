// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import 'package:socialmediagestor/tools/textStyles_constants.dart';

class NextItemLoading extends StatefulWidget {
  const NextItemLoading({Key? key}) : super(key: key);

  @override
  State<NextItemLoading> createState() => _NextItemLoadingState();
}

class _NextItemLoadingState extends State<NextItemLoading> {
  late bool loadingInProgress;

  Future _load() async {
    await new Future.delayed(
      new Duration(seconds: 2),
    );
    _dataLoaded();
  }

  void _dataLoaded() {
    setState(() {
      loadingInProgress = false;
      Navigator.pushNamed(context, '/item_detail');
    });
  }

  @override
  void initState() {
    super.initState();
    loadingInProgress = true;
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo-agencia.png',
                width: 170,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Carregando próximo item..',
              style: tPrimarySubTitle,
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(kPrimaryColor),
              strokeWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}
