import 'package:flutter/material.dart';

Future myBottomModal({required BuildContext context, required Widget body, required double modalHeight}) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100.0),
    ),
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            color: Colors.white,
          ),
          height: modalHeight,
          width: MediaQuery.of(context).size.width,
          child: body
        ),
      );
    },
  );
}
