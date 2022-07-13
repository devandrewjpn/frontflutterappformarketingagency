import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  ImageDialog({required this.imagePath});

  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
      ),
    );
  }
}
