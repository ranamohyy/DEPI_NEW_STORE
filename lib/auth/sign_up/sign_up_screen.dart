import 'package:first_depi1/core/helpers/app_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/header_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30,horizontal: 16),
          child: Column(
            spacing: 12,
            children: [
              ///-------------------HEADER--------------------------------
              HeaderAuth(
                title: "Create New Account",
                header:
                    "Looks like you don\'t hane an account\nor connect with social media  ",
              ),

              ///------------------------------------------------------------------------------
              AppField(hintText: "Name", preIcon:Icons.person),
              AppField(hintText: "Email", preIcon:
              Icons.mail_lock_outlined),
              AppField(hintText: "Password", preIcon:
              Icons.lock_outline_rounded),
              AppField(hintText: "Confirm Password", preIcon:
              Icons.lock_outline_rounded),



            ],
          ),
        ),
      ),
    );
  }
}
