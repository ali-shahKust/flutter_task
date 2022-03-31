import 'package:dio/dio.dart';

class ApiClient {
  Dio _dio = Dio();
  Future<Response> login({required String email ,required String passwrod})async{
    Response response =await _dio.post("https://reqres.in/api/login",data:{
      'email':"eve.holt@reqres.in",
      'password':"cityslicka",
    });

    return response;
  }
}