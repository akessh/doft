import 'package:doft_app/utils/doft_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.searchcontroller,
  });

  final TextEditingController searchcontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Hey Akesh',
                      style: GoogleFonts.frankRuhlLibre(fontSize: 18),
                    ),
                    const Text('Good Morning...'),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    size: 25,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SizedBox(
                height: 40,
                width: 400,
                child: DoftTextField(
                    text: 'Search here...',
                    texController: searchcontroller,
                    icon: Icons.search,
                    isPassowrdType: false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
