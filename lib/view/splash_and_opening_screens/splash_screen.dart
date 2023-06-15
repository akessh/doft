import 'package:doft_app/controllers/splash_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSplash extends StatelessWidget {
  final SplashController sc = Get.put(SplashController());
  ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.451),
      body: Center(
        child: Image.asset('assets/splashimage.png'),
      ),
    );
  }
}
