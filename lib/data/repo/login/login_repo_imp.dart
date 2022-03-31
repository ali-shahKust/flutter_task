import 'package:dio/src/response.dart';
import 'package:flutter_task/data/repo/login/login_repo.dart';

class LoginRepoImp extends LoginRepo{

  //!this will call function for login so sending static email address
  @override
  Future<Response> login({required String email,required String password}) async{
    return await repo.login(email: email, passwrod: password);
  }


}