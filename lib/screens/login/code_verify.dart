// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../components/CustomInput.dart';
import '../../components/PrimaryButton.dart';
import '../../tools/textStyles_constants.dart';

class CodeVerifyScreen extends StatelessWidget {
  const CodeVerifyScreen({Key? key}) : super(key: key);

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
              'Código de verificação',
              style: tPrimaryTextTitle,
            ),
            SizedBox(height: 20.0,),
            Text(
              textAlign: TextAlign.center,
              'Insira o código enviado em seu e-mail para validação e modificação da senha.',
              style: tDashboardBoxDescript,
            ),
            SizedBox(height: 40.0,),
            CustomInput(
              isCensored: false,
              textType: TextInputType.number,
              label: 'Código',
              placeholder: '',
            ),
            PrimaryButton(
              press: () => Navigator.pushNamed(context, '/new_password'),
              buttonText: 'Validar',
            ),
          ],
        ),
      ),
    );
  }
}
