import 'package:first_depi1/auth/login/login_cubit.dart';
import 'package:first_depi1/core/helpers/app_field.dart';
import 'package:first_depi1/core/helpers/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/header_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
          backgroundColor: Colors.white,
          body:
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if(state is LoginSuccess){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("Login Success"))
                )
                ;
              }
              if(state is LoginFailure){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(state.msg))
                )
                ;
              }


            },
            builder: (context, state) {
              final cubit=  BlocProvider.of<LoginCubit>(context);
              ///-------------handle loading state----------------------------------------
              if(state is LoginLoading){
                return Center(child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),);
              }

              return SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30, horizontal: 16),
                      child: Column(
                        spacing: 12,
                        children: [

                          ///-------------------HEADER--------------------------------
                          HeaderAuth(
                            title: "Welcome Back",
                            header:
                            "Login to your account \nor connect with social media  ",
                          ),

                          ///------------------------------------------------------------------------------

                          AppField(
                            controller: cubit.emailController,
                              hintText: "Email",
                              preIcon: Icons.mail_lock_outlined),
                          AppField(
                            controller: cubit.passwordController,
                            hintText: "Password", preIcon: Icons.lock,
                          ),

                          ElevatedButton(onPressed: () {
                            cubit.login();
                          },
                              child: Text("Login"))
                        ],

                      )
                  )

              );
            },
          )

      ),
    );
  }
}
