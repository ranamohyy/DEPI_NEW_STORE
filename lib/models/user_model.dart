


class UserModel{
  String? token;



  ///----------------------------------------------
  UserModel(this.token);

  ///-------------named constructor---------------------
  UserModel.fromJson(Map<String,dynamic>json){
    token=json['refresh_token'];
  }

}