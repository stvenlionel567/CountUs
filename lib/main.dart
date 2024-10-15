import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satu/features/authentication/login/controllers/login_controller.dart';
import 'package:satu/features/authentication/login/screens/login_screen.dart';
import 'package:satu/features/authentication/signup/signup_screen.dart';
import 'package:satu/repository/authentication_repository.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const CountUs());

  Get.lazyPut(() => LoginController());
  // Get.lazyPut(() => AuthenticationRepository());
}

class CountUs extends StatelessWidget {
  const CountUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
