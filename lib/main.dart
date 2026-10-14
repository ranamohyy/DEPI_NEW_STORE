import 'package:first_depi1/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'auth/login/login_screen.dart';
import 'auth/sign_up/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen()
    );
  }
}

///=====================1- api data=================================
///==================2- model data =A===============================
///==================3-add packages flutter_bloc // dio =========================
///=================4- cubit - state ========================
///================= 5- states==> initial - loading -- success -- failure-----------
///==========================6- BlocProvider == BlocBuilder /Consumer  ===========================

