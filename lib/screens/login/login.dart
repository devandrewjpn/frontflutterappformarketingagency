// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/tools/colors_constants.dart';
import '../../components/CustomInput.dart';
import '../../components/PrimaryButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Hero(
                tag: 'logo',
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo-agencia.png',
                    width: 170,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomInput(
                        isCensored: false,
                        textType: TextInputType.emailAddress,
                        label: 'E-mail',
                        placeholder: 'Insira seu e-mail:',
                      ),
                      CustomInput(
                        isCensored: true,
                        textType: TextInputType.visiblePassword,
                        label: 'Senha',
                        placeholder: 'Insira sua senha:',
                      ),
                      PrimaryButton(
                        press: () => Navigator.pushNamed(context, '/dashboard'),
                        buttonText: 'Entrar',
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot');
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        'Esqueci minha senha'.toUpperCase(),
                        style: TextStyle(color: kTextSemiBoldColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
