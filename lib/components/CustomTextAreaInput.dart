// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../tools/colors_constants.dart';

class CustomTextAreaInput extends StatefulWidget {

  String label;
  String placeholder;

  CustomTextAreaInput({
    Key? key,
    required this.label,
    required this.placeholder,
  }) : super(key: key);

  @override
  State<CustomTextAreaInput> createState() => _CustomTextAreaInputState();
}

class _CustomTextAreaInputState extends State<CustomTextAreaInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 5,
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
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.grey.shade400),
          floatingLabelStyle: TextStyle(color: kPrimaryColorDark),
          hintText: widget.placeholder,
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
