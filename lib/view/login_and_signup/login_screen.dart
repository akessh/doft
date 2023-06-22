
import 'package:doft_app/const/const.dart';
import 'package:doft_app/controllers/auth_controller.dart';
import 'package:doft_app/view/login_and_signup/signup.dart';
import 'package:doft_app/utils/doft_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScreenLogin extends StatelessWidget {
 const ScreenLogin({super.key});
  @override
  Widget build(BuildContext context) {
    double kheight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: kheight * 1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/image2.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 300),
           child: GetBuilder<AuthController>(
            init: AuthController(),
             builder: (c) {
               return Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DoftTextField(
                        text: 'ENTER USERNAME',
                        icon:Icons.person_2_outlined ,
                        isPassowrdType: false,
                          texController: c.loginUsernameController),
                     ksize,
                      DoftTextField(
                         text: 'ENTER PASSWORD',
                        icon:Icons.lock_outlined ,
                        isPassowrdType:true,
                          texController: c.loginPasswordController),
                          ksize,
                      ElevatedButton(
                        onPressed: () {
                          c.signIn();
                        },
                        child: const Text('LOGIN'),
                      ),
                      ksize,
                      ksize,
                      InkWell(
                        onTap: () {
                          Get.to(()=> ScreenSignUp());
                        },
                        child:const Text('Dont Have An Account? SignUp'))
                    ],
                  );
             }
           ),
         ),
          
        ],
      ),
    );
  }
}
