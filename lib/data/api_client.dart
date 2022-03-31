import 'package:dio/dio.dart';

class ApiClient {
  Dio _dio = Dio();
  Future<Response> login({required String email ,required String passwrod})async{
    Response response =await _dio.post("DummyApi",data:{
      'email':email,
      'password':passwrod,
    });

    return response;
  }
}