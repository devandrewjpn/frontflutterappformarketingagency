// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/CustomInput.dart';
import '../../components/PrimaryButton.dart';
import '../../tools/textStyles_constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
              'Esqueci minha senha',
              style: tPrimaryTextTitle,
            ),
            SizedBox(height: 20.0,),
            Text(
              textAlign: TextAlign.center,
              'Por favor, insira o e-mail cadastrado para enviarmos o código de alteração da senha.',
              style: tDashboardBoxDescript,
            ),
            SizedBox(height: 40.0,),
            CustomInput(
              isCensored: false,
              textType: TextInputType.emailAddress,
              label: 'E-mail',
              placeholder: 'captainjack@pirate.ca',
            ),
            PrimaryButton(
              press: () => Navigator.pushNamed(context, '/code_verify'),
              buttonText: 'Enviar',
            ),
          ],
        ),
      ),
    );
  }
}
