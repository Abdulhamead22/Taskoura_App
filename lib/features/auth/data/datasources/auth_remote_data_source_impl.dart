import 'package:flutter_application_1/core/services/remote/dio_handler.dart';
import 'package:flutter_application_1/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';



class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioHandler dioHandler;

  AuthRemoteDataSourceImpl({required this.dioHandler});

  @override
  Future<UserModel> login(String email, String password) async {
    //send request to api
    final response = await dioHandler.post('user/login', data: {
      'email': email,
      'password': password,
    });
    // receive from api and convert to code dart
    return UserModel.fromJson(response.data);
  }

  @override
  Future<UserModel> signUp(String name, String email, String password) async {
    //send request to api
    final response = await dioHandler.post('user/signup', data: {
      'name': name,
      'email': email,
      'password': password,
    });
    // receive from api and convert to code dart
    return UserModel.fromJson(response.data);
  }

  @override
  Future<String> forgotPassword(String email) async {
    final response = await dioHandler.post(
      '/user/forgot-password',
      data: {
        'email': email,
      },
    );
    return response.data['message'];
  }
  
    @override
  Future<bool> verifyResetCode(String code) async {
     final response = await dioHandler.post(
    '/user/verify-code',
    data: {
      'code': code,
    },
  );

  return response.data['message'];
  }

  @override
  Future<bool> resetPassword(String email, String newPassword) async {
     final response = await dioHandler.post(
    '/user/reset-password',
    data: {
      'email': email,
      'newPassword': newPassword,
    },
  );

  return response.data['message'];
  }


}
