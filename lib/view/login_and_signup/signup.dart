import 'package:doft_app/const/const.dart';
import 'package:doft_app/controllers/auth_controller.dart';
import 'package:doft_app/utils/doft_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSignUp extends StatelessWidget {
   ScreenSignUp({super.key});

  final AuthController c =Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: GetBuilder<AuthController>(
            init: AuthController(),
            builder: (c) {
              return Column(
                children: [
                  Text(
                    'CREATE YOUR DOFT ACCOUNT',
                    style: kmaintextstyle,
                  ),
                  ksize,
                  ksize,
                  ksize,
                  DoftTextField(
                    text: 'ENTER FULL NAME',
                    icon: Icons.person_2_outlined,
                    isPassowrdType: false,
                    texController: c.nameController,
                  ),
                  ksize,
                  DoftTextField(
                    text: 'ENTER USER NAME',
                    icon: Icons.person_2_outlined,
                    isPassowrdType: false,
                    texController: c.emailController,
                  ),
                  ksize,
                  DoftTextField(
                    text: 'ENTER PASSWORD',
                    icon: Icons.lock_outlined,
                    isPassowrdType: true,
                    texController: c.passController,
                  ),
                  ksize,
                  Align(
                    alignment: const Alignment(0.001, 0.6),
                    child: ElevatedButton(
                      style: const ButtonStyle(),
                      onPressed: ()async {
                       await c.signUp();
                      },
                      child: const Text('SIGN UP'),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
