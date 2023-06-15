import 'package:doft_app/const/const.dart';
import 'package:doft_app/utils/main_images.dart';
import 'package:doft_app/utils/swipe_button_widget.dart';
import 'package:flutter/material.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MainImages(imagepath: 'assets/image1.jpg'),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '  ATTRACT \n OTHERS \n WITH YOUR \n SMELL. . .',
              style: kmaintextstyle,
            ),
          ),
          SwipeButton(),
        ],
      ),
    );
  }
}
