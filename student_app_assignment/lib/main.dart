import 'package:flutter/material.dart';
import 'package:student_app_assignment/Profile/home.dart';
import 'package:student_app_assignment/Registeration/login.dart';
import 'package:student_app_assignment/navigation.dart';
import 'package:student_app_assignment/Registeration/register.dart';
import 'package:student_app_assignment/Dashboard/HomeScreen.dart';

import 'Dashboard/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register' : (context) => MyRegister(),
      'dashboard' : (context) => HomeScreen(),
      'navigation' : (context) => MyNavigation(),
      'profile' : (context) => HomePage(),


    },
  ));
}