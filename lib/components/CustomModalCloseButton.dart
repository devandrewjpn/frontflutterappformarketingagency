import 'package:flutter/material.dart';

import '../tools/colors_constants.dart';

class CustomModalCloseButton extends StatelessWidget {
  const CustomModalCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Text(
          'Cancelar',
          style: TextStyle(
              color: kPrimaryColor,
              fontWeight:
                  FontWeight.bold),
        ),
      ),
    );
  }
}
