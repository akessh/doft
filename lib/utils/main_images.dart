import 'dart:ui';

import 'package:flutter/material.dart';

class MainImages extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final imagepath;
  const MainImages({
    required this.imagepath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 30.0,
        sigmaY: 30.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagepath), fit: BoxFit.cover, opacity: 30),
        ),
      ),
    );
  }
}
