import 'package:doft_app/view/splash_and_opening_screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonFloat extends StatelessWidget {
  const ButtonFloat({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.white.withOpacity(0.4),
          onPressed: () {
            Get.off(() => const ScreenSecond());
          },
          child: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
