// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';

class LogoutLoading extends StatefulWidget {
  const LogoutLoading({Key? key}) : super(key: key);

  @override
  State<LogoutLoading> createState() => _LogoutLoadingState();
}

class _LogoutLoadingState extends State<LogoutLoading> {
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
      Navigator.pushNamed(context, '/');
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
            Hero(
              tag: 'logo',
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo-agencia.png',
                  width: 170,
                ),
              ),
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
