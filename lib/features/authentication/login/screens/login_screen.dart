// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satu/features/authentication/login/controllers/login_controller.dart';
import '../../../../screens/homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0XFF011F6B)),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0XFF011F6B),
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/login_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 55,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/Group.png',
                height: 680,
                width: 680,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0XFF011F6B),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 290,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Please login to your account \nto use our features",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF011F6B),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginController.emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(color: Color(0XFF8A8888)),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: const TextStyle(color: Color(0XFF011F6B)),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    controller: loginController.passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Color(0XFF8A8888)),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: const TextStyle(color: Color(0XFF011F6B)),
                  ),
                  const SizedBox(height: 4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // Fungsi untuk "Forgot Password"
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0XFF011F6B),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 700,
                    child: ElevatedButton(
                      onPressed: () {
                        // loginController.signIn(loginController.emailController.text,
                        //     loginController.passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF011F6B),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 40,
                    child: Column(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0XFF011F6B),
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Signup',
                            style: TextStyle(
                              color: Color(0XFF005B96),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
