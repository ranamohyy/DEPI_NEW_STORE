
import 'package:dio/dio.dart';
import 'package:first_depi1/core/helpers/cache_helper.dart';
import 'package:first_depi1/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  ///------------------object from dio==============
final dio =Dio();

///--------------------controllers-----------------------------
TextEditingController emailController =TextEditingController();
TextEditingController passwordController =TextEditingController();
Future<void>login ()async{
  try{
    ///-----------emit loading---------------
    emit(LoginLoading());

    ///----------------------------
    final Response response = await dio.post("https://api.escuelajs.co/api/v1/auth/login",
    data: {
      "email": emailController.text,
      "password":passwordController.text
    },

    );


    if(response.statusCode==201||response.statusCode==200){
      ///--------------pass token to model------------------
      UserModel user = UserModel.fromJson(response.data);
      ///=================cache user===============
      if(user.token!=null){
        await CacheHelper.saveToken(user.token!);
      }
      else{
        emit(LoginFailure("No Token Found"));
      }

      emit(LoginSuccess());
    }else{
      emit(LoginFailure("error in login"));

    }


  }
      ///----------------handle error----------
  on DioException catch(e){
    emit(LoginFailure(e.message??"Dio Exception"));
  }catch(e){
    emit(LoginFailure(e.toString()));
  }



}


}
