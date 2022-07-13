import 'package:flutter/material.dart';

import '../tools/colors_constants.dart';

class DangerButton extends StatelessWidget {
  String buttonText;
  VoidCallback press;

  DangerButton({
    Key? key,
    required this.buttonText,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 60,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color.fromRGBO(255, 114, 114, 1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          buttonText,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
