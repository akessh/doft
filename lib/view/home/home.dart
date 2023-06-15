import 'package:doft_app/view/login_and_signup/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SCreenHome extends StatelessWidget {
  const SCreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(onPressed: (){
          FirebaseAuth.instance.signOut().then((value){
            Get.offAll(()=>const ScreenLogin());
          });
        }, child:const Text('LOGOUT') ),
      ),
    );
  }
}