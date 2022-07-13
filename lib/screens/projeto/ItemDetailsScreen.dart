// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/components/CustomTextAreaInput.dart';
import 'package:socialmediagestor/components/DangerButton.dart';
import 'package:socialmediagestor/components/LabelItemWithIcon.dart';
import 'package:socialmediagestor/components/PrimaryButton.dart';
import 'package:socialmediagestor/tools/function_library.dart';
import '../../components/BottomNavBar.dart';
import '../../components/BottomNavButton.dart';
import '../../components/CustomModalCloseButton.dart';
import '../../components/CustomRoundedBox.dart';
import '../../components/CustomSmallRoundedBox.dart';
import '../../components/ImageDialog.dart';
import '../../tools/textStyles_constants.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () async {
              await showDialog(
                context: context,
                builder: (_) => ImageDialog(
                  imagePath: 'assets/images/captain-jackbig.png',
                ),
              );
            },
            child: Image.asset('assets/images/captain-jackbig.png'),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white),
              height: 200,
              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomSmallRoundedBox(
                          onpress: () {
                            myBottomModal(
                              context: context,
                              body: Padding(
                                padding: EdgeInsets.all(30),
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    CustomModalCloseButton(),
                                    const SizedBox(
                                      height: 30.0,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Tem certeza de que deseja reprovar este item?',
                                      style: tProjectCardTitle,
                                    ),
                                    const SizedBox(
                                      height: 30.0,
                                    ),
                                    DangerButton(
                                      buttonText: 'Reprovar',
                                      press: () {},
                                    ),
                                  ],
                                ),
                              ),
                              modalHeight:
                                  MediaQuery.of(context).size.height / 3,
                            );
                          },
                          iconPath: 'assets/images/dislike-icon.svg',
                        ),
                        CustomRoundedBox(
                          onpress: () {
                            Navigator.pushNamed(context, '/item_loader');
                          },
                          iconPath: 'assets/images/like-icon.svg',
                        ),
                        CustomSmallRoundedBox(
                          onpress: () {
                            myBottomModal(
                              context: context,
                              body: Padding(
                                padding: EdgeInsets.all(30),
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    CustomModalCloseButton(),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'O item será retornado para o designer com as seguintes observações:',
                                      style: tModalTItle,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    CustomTextAreaInput(
                                      label: 'Observações:',
                                      placeholder:
                                          'Insira suas observações aqui',
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    PrimaryButton(
                                      buttonText: 'Enviar',
                                      press: () {
                                        Navigator.pushNamed(
                                            context, '/item_loader');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              modalHeight:
                                  MediaQuery.of(context).size.height / 2,
                            );
                          },
                          iconPath: 'assets/images/edit-image-icon.svg',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Status: ',
                              style: tDashboardBoxDescriptBold,
                            ),
                            Text(
                              'Aguardando aprovação.',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.black.withOpacity(.50),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    LabelItemWithIcon(
                      label: 'Empresa name placeholder',
                      IconPath: 'assets/images/company-grey-icon.svg',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Descrição:',
                            style: tProjectCardTitle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                            style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
