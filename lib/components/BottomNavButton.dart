import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tools/colors_constants.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 8),
          ),
        ],
      ),
      height: 60,
      width: 60,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          // elevation: 20.0,
          child: SvgPicture.asset(
            'assets/images/dashboard-menu-icon.svg',
            width: 20.0,
          ),
        ),
      ),
    );
  }
}