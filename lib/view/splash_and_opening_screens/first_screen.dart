import 'package:doft_app/const/const.dart';
import 'package:doft_app/utils/float_button.dart';
import 'package:doft_app/utils/main_images.dart';
import 'package:flutter/material.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MainImages(imagepath: 'assets/image2.jpg'),
          Text(
            ' YOU WILL \n NEVER FULLY \n DRESSED \n WITHOUT \n PERFUME. . .',
            style: kmaintextstyle,
          ),
          const ButtonFloat(),
        ],
      ),
    );
  }
}
