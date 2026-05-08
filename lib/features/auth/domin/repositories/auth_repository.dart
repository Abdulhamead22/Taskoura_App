import 'package:flutter_application_1/features/auth/domin/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<User> signUp(String name, String email, String password);
  Future<String> forgotPassword(String email);
  Future<bool> verifyResetCode(String code);
  Future<bool> resetPassword(String email, String newPassword);
  Future<void> logout();

}
