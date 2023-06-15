import 'package:flutter/material.dart';

class DoftTextField extends StatelessWidget {
  const DoftTextField({
    required this.text,
    required this.texController,
    required this.icon,
    required this.isPassowrdType,
    
    super.key,
  });
  final TextEditingController texController;
  final String text;
  final IconData icon;
  final bool isPassowrdType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: TextField(
        controller: texController,
        obscureText: isPassowrdType,
        enableSuggestions: isPassowrdType,
        autocorrect:isPassowrdType,
        cursorColor: Colors.white,
        style:  TextStyle(
         color: Colors.white.withOpacity(0.9)
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(icon,color: Colors.white70,),
          labelText: text,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.9),),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white.withOpacity(0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide:const BorderSide(width: 0,style: BorderStyle.none),
          ),

        ),
        
        keyboardType: isPassowrdType?TextInputType.visiblePassword:
        TextInputType.emailAddress,
      ),
    );
  }
}
