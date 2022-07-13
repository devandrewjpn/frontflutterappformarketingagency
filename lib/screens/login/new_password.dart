// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/CustomInput.dart';
import '../../components/PrimaryButton.dart';
import '../../tools/textStyles_constants.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Alteração de senha',
              style: tPrimaryTextTitle,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              textAlign: TextAlign.center,
              'Insira uma nova senha para acesso.',
              style: tDashboardBoxDescript,
            ),
            SizedBox(
              height: 40.0,
            ),
            CustomInput(
              isCensored: true,
              textType: TextInputType.visiblePassword,
              label: 'Nova senha',
              placeholder: '',
            ),
            CustomInput(
              isCensored: true,
              textType: TextInputType.visiblePassword,
              label: 'Repita a senha',
              placeholder: '',
            ),
            PrimaryButton(
              press: () => Navigator.pushNamed(context, '/logout'),
              buttonText: 'Enviar',
            ),
          ],
        ),
      ),
    );
  }
}
