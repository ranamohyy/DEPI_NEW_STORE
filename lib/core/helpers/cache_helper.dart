


import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheHelper {

  static final secure = FlutterSecureStorage();

  ///---------------------save token------------------
  static Future saveToken(String token)async{
    return await secure.write(key: 'token', value:token );
  }
  ///--------------------get token------------------------
  //
static Future<String> getToken()async{
  return await secure.read(key: 'token')??"";
}


  ///-------------------delete ------------------------7

static Future deleteToken()async{
    return await secure.delete(key: 'token');
}



}