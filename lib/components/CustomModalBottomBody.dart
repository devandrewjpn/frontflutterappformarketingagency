import 'package:flutter/material.dart';

import 'MyClipper.dart';

class CustomModalBottomBody extends StatefulWidget {
  Widget? modalBody;
  double? modalHeight;

  CustomModalBottomBody({
    Key? key,
    required this.modalBody,
    required this.modalHeight,
  }) : super(key: key);

  @override
  State<CustomModalBottomBody> createState() => _CustomModalBottomBodyState();
}

class _CustomModalBottomBodyState extends State<CustomModalBottomBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Container(
              //   // transform: Matrix4.translationValues(0.0, 20.0, 0.0),
              //   child: SvgPicture.asset(
              //     'assets/images/modal-indicator.svg',
              //     width: 60,
              //   ),
              // ),
              ClipShadowPath(
                shadow: const Shadow(
                  blurRadius: 15,
                  color: Colors.grey,
                  offset: Offset(0, 10),
                ),
                clipper: MyClipper(120),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  height: widget.modalHeight,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: widget.modalBody,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
