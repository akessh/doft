
import 'package:doft_app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenProfile extends StatelessWidget {
   ScreenProfile({super.key});
final AuthController ac=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed:(){
            ac.signOut();
          },
           child:const Text('Logout')),
      ),
    );
  }
}