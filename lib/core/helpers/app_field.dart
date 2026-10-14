import 'package:first_depi1/core/helpers/constans.dart';
import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  const AppField({
    super.key,
    required this.hintText,
    required this.preIcon,
     this.suffixIcon,
    this.controller,
    this.obscureText =false ,
  });
  final String hintText;
  final IconData preIcon;
  final Widget ?suffixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (value) {},
      controller: controller,
      decoration: InputDecoration(
        prefixIcon:  Icon(preIcon,
          size: 30,color: Colors.grey,

        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        hintStyle: TextStyle(
          color: Colors.grey
        ),
        fillColor: Colors.grey.shade100,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
