import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gymm/screens/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key,this.buttonText, this.onTap, this.color, this.textColor});
  final String? buttonText;
  final Widget? onTap;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (e)=>onTap!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: color!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          border: Border.all(
            color: Colors.grey,
            width: 1.5,
          ),
         // boxShadow: const [
            //BoxShadow(
              //color: Color(0xA69E9E9E), // Set shadow color and opacity
             // spreadRadius: 10, // Set spread radius
            //  blurRadius: 10, // Set blur radius
             // offset: Offset(2, 0), // Set offset for shadow
            //),
          //],
        ),
          child: Text(
            buttonText!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
          ),
          ),
      ),
    );
  }
}
