import 'package:doft_app/controllers/swipe_button_controller.dart';
import 'package:doft_app/view/login_and_signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeButton extends StatelessWidget {
  SwipeButton({super.key});
  final SwipeButtonController sbc = Get.put(SwipeButtonController());
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: GetBuilder<SwipeButtonController>(builder: (sbc) {
          return SwipeableButtonView(
            buttonColor: const Color.fromARGB(255, 34, 34, 34),
            buttonText: ' TO EXPLORE DOFT',
            buttonWidget: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey.withOpacity(0.9),
            ),
            activeColor: const Color.fromARGB(255, 47, 50, 48).withOpacity(0.7),
            isFinished: sbc.isFinished,
            onWaitingProcess: () async {
              sbc.delayfun();
            },
            onFinish: () {
              Get.off(
                () => const ScreenLogin(),
              );
              sbc.isFinished = false;
            },
          );
        }),
      ),
    );
  }
}
