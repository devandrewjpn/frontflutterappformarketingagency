// ignore_for_file: prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:socialmediagestor/components/CustomInput.dart';
import 'package:socialmediagestor/components/DangerButton.dart';
import 'package:socialmediagestor/components/PrimaryButton.dart';
import 'package:socialmediagestor/tools/function_library.dart';
import 'package:socialmediagestor/tools/textStyles_constants.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import '../../components/CustomModalCloseButton.dart';
import '../../components/CustomPageTitle.dart';
import '../../tools/colors_constants.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const BottomNavButton(),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: BottomNavBar(),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 60, bottom: 60),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomPageTitle(
                title: 'Redes',
                subTitle: 'sociais',
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            blurRadius: 10,
                            spreadRadius: 0.0,
                            offset: Offset(
                              6.0,
                              9.0,
                            ),
                          ),
                        ],
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/instagram-gradient.png'),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '@instagramempresa',
                                style: tProjectCardTitle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Conectado',
                                    style: TextStyle(
                                        color: kSuccessColor,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      myBottomModal(                                      
                                        context: context,
                                        body: Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: Column(
                                            children: [
                                              CustomModalCloseButton(),
                                              const SizedBox(
                                                height: 30.0,
                                              ),
                                              CustomInput(
                                                isCensored: false,
                                                textType:
                                                    TextInputType.emailAddress,
                                                label: 'Login de acesso',
                                                placeholder: '',
                                              ),
                                              CustomInput(
                                                isCensored: true,
                                                textType: TextInputType
                                                    .visiblePassword,
                                                label: 'Senha',
                                                placeholder: '',
                                              ),
                                              CustomInput(
                                                isCensored: false,
                                                textType: TextInputType.text,
                                                label: 'Atalho de acesso',
                                                placeholder:
                                                    '@captainjacksparrow',
                                              ),
                                              PrimaryButton(
                                                buttonText: 'Confirmar',
                                                press: () {},
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              DangerButton(
                                                buttonText: 'Remover rede',
                                                press: () {},
                                              ),
                                            ],
                                          ),
                                        ),
                                        modalHeight: MediaQuery.of(context).size.height / 1.7,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          border: Border.all(
                                              color: Colors.grey, width: 1)),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 2, 8, 2),
                                        child: Text('Gerenciar rede'),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
