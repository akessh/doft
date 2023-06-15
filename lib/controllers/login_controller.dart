import 'package:doft_app/view/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  loginFunction() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: usernameController.text, password: passwordController.text)
        .then((value) {
      Get.off(
        () => const SCreenHome(),
      );
    }).onError((error, stackTrace) {
      print("Error${error.toString()}");
    });
    update();
  }
}
