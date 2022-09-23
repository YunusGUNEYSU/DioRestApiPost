
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:test_case/features/login/model/login_model.dart';

abstract class ILoginService{
  final Dio dio;

  ILoginService(this.dio);
  
Future<LoginModel?> fetchLoginItem(String email,String password);
}

class LoginService extends ILoginService {
  LoginService(super.dio);

  @override
  Future<LoginModel?> fetchLoginItem(String email,String password) async {
    final response= await dio.post('/login',data:{'email':email,'password':password});
    if (response.statusCode==HttpStatus.ok) {
      final jsonbody=response.data;
      if (jsonbody is Map<String,dynamic>) {
        return LoginModel.fromJson(jsonbody);
      }
    }
    return null;
  }
  
}