// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../tools/colors_constants.dart';

class CustomInput extends StatelessWidget {

  String label;
  String placeholder;
  TextInputType textType;
  bool isCensored;

  CustomInput({
    Key? key,
    required this.label,
    required this.placeholder,
    required this.textType,
    required this.isCensored,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(bottom: 10.0),
      child: TextField(
        obscureText: isCensored,
        keyboardType: textType,
        decoration: InputDecoration(
          filled: false,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey.shade400),
          floatingLabelStyle: TextStyle(color: kPrimaryColorDark),
          hintText: placeholder,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColorDark),
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
      ),
    );
  }
}
