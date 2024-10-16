// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satu/features/authentication/login/controllers/login_controller.dart';
import 'package:satu/features/authentication/login/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';



void main()  {
 
  runApp(const CountUs());

}

class CountUs extends StatelessWidget {
  const CountUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

