import 'package:flutter_application_1/features/auth/domin/entities/user.dart';

abstract class AuthRepository {
  Future<User> login();
  Future<User> signUp();
  Future<String> forgotPassword();
  Future<bool> verifyResetCode();
  Future<bool> resetPassword();
  Future<String> logout();

}
