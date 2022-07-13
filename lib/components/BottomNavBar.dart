import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 15,
            right: MediaQuery.of(context).size.width / 15,
          ),
          height: 65.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/company');
                },
                child: Container(
                  child: SvgPicture.asset(
                    'assets/images/company-navbar-icon.svg',
                    width: 25.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/project_list');
                },
                child: Container(
                  child: SvgPicture.asset(
                    'assets/images/project-list-navbar-icon.svg',
                    width: 25.0,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/network');
                },
                child: Container(
                  child: SvgPicture.asset(
                    'assets/images/network-navbar-icon.svg',
                    width: 25.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
                child: Container(
                  child: SvgPicture.asset(
                    'assets/images/notifications-navbar-icon.svg',
                    width: 25.0,
                  ),
                ),
              ),
            ],
          ),
        );
  }
}