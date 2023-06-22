
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doft_app/models/user_models/user_models.dart';
import 'package:doft_app/view/login_and_signup/login_screen.dart';
import 'package:doft_app/view/navigation/navigationscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {

  FirebaseAuth auth=FirebaseAuth.instance;
  FirebaseFirestore db=FirebaseFirestore.instance;

  TextEditingController emailController =TextEditingController();
  TextEditingController passController =TextEditingController();
  TextEditingController nameController =TextEditingController();
  TextEditingController loginUsernameController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();


  signUp()async{
    try{
     await auth.createUserWithEmailAndPassword(
      email:emailController.text ,
       password: passController.text);
       await addUser(UsereModel(
        email: auth.currentUser?.email,
        name: nameController.text,
        id: auth.currentUser?.uid,
        ));
        Get.offAll(()=> ScreenNavigation());
    }catch(e){
      Get.snackbar('Error', '$e');
    }
  }

  signIn()async{
    try{
      await auth.signInWithEmailAndPassword(
        email: loginUsernameController.text, 
        password: loginPasswordController.text);
        Get.offAll(()=> ScreenNavigation());
      
    }catch(e){
      Get.snackbar('Error', '$e');
    }

  }

  signOut()async{
    try{
      await auth.signOut();
      Get.offAll(()=>const ScreenLogin()); 

    }catch(e){
      Get.snackbar('Error', '$e');
    }
  }

  addUser(UsereModel userModel)async{
    try{
     await db.collection('users').doc(auth.currentUser?.uid).collection('loginCredential${nameController.text}').add(userModel.toMap());
    }catch(e){
      Get.snackbar('Error', '$e');
    }
  }
   

}
