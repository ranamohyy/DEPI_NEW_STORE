

import 'package:flutter/material.dart';
class HeaderAuth extends StatelessWidget {
  const HeaderAuth({super.key, required this.title, required this.header});
final String title;
final String header;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAXWvqeh6xkeqQKDWgCzSb1ROPD-6C8tHNEzrzn1j3AOSVw-e3tBUGJ4A&s=10",
          height: 200,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800
          ),

        ),
        Text(
          header,
          textAlign:TextAlign.center ,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey
          ),

        ),

      ],
    );
  }
}
