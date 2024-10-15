import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satu/repository/authentication_repository.dart';

class LoginController extends GetxController {
  // final AuthenticationRepository authenticationRepository = Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // void signIn(String email, String password){
  //   authenticationRepository.signIn(email, password);
  // }
}
