import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gymm/screens/signin_screen.dart';
import 'package:gymm/screens/signup_screen.dart';
import 'package:gymm/widgets/custom_scaffold.dart';
import 'package:gymm/widgets/welcome_button.dart';


class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context){
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: const EdgeInsets.only(top: 65.0),

            child: Center(child: RichText(

              textAlign: TextAlign.right,

              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome To \n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  TextSpan(
                      text: 'GymFlair !\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                  TextSpan(
                    text: 'Enter your personal details account\n',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    )
                  )
                ]
              ),
      )),
          )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children:[
                  Expanded(
                      child:WelcomeButton(
                        buttonText: 'Sign In ',
                        onTap: SignInScreen(),
                        color:Colors.white70 ,
                      )
                  ),
                  Expanded(
                      child: WelcomeButton(
                        buttonText: 'Sign Up',
                        onTap: SignUpScreen(),
                        color:Colors.white70 ,
                      )
                  ),
              ],
                        ),
            ),
          ),
        ],
      ),
    );
  }
}