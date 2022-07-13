import 'package:flutter/material.dart';

import '../tools/colors_constants.dart';

class PrimaryButton extends StatelessWidget {
  String buttonText;
  VoidCallback press;

  PrimaryButton({
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
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
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
