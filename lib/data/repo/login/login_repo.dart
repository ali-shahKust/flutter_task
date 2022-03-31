import 'package:dio/dio.dart';
import 'package:flutter_task/data/base/base_repo.dart';

abstract class LoginRepo extends BaseRepo {
  Future<Response> login({required String email, required String password});
  Future<Response> getData({required String id});
}