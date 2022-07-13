// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:socialmediagestor/screens/Dashboard.dart';
import 'package:socialmediagestor/screens/empresa/companydetailsScreen.dart';
import 'package:socialmediagestor/screens/login/code_verify.dart';
import 'package:socialmediagestor/screens/login/forgot_password.dart';
import 'package:socialmediagestor/screens/login/login.dart';
import 'package:socialmediagestor/screens/login/logoutLoading.dart';
import 'package:socialmediagestor/screens/login/new_password.dart';
import 'package:socialmediagestor/screens/notificacoes/notificationsScreen.dart';
import 'package:socialmediagestor/screens/projeto/ItemDetailsScreen.dart';
import 'package:socialmediagestor/screens/projeto/NextItemLoading.dart';
import 'package:socialmediagestor/screens/projeto/ProjectDetails.dart';
import 'package:socialmediagestor/screens/redes/networkScreen.dart';
import 'screens/projeto/ProjectListScreen.dart';

void main() => runApp(const SocialMediaGestorApp());

class SocialMediaGestorApp extends StatelessWidget {
  const SocialMediaGestorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SM Gesture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'MontSerrat'
      ),
      routes: {
        // acesso
        '/': (context) => const LoginScreen(),
        '/forgot': (context) => const ForgotPasswordScreen(),
        '/code_verify': (context) => const CodeVerifyScreen(),
        '/new_password': (context) => const NewPasswordScreen(),

        //dashboard
        '/dashboard': (context) => DashboardScreen(),
        '/logout': (context) => LogoutLoading(),

        //projeto
        '/item_detail': (context) => ItemDetailsScreen(),
        '/item_loader': (context) => NextItemLoading(),
        '/project_list': (context) => ProjectListScreen(),
        '/project_details': (context) => ProjectDetailsScreen(),
        
        //empresa
        '/company': (context) => CompanyDetailsScreen(),

         //notificacoes
        '/notifications': (context) => NotificationsScreen(),

        //redes
        '/network': (context) => NetworkScreen(),
      },
    );
  }
}
