import 'package:flutter_application_1/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> signUp(String name, String email, String password);
  Future<String> forgotPassword(String email);
  Future<bool> verifyResetCode(String code);
  Future<bool> resetPassword(String email, String newPassword);
}