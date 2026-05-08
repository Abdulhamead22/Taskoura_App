import 'package:flutter_application_1/features/auth/domin/entities/user.dart';
import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';

class SignupUsecase {
  final AuthRepository repository;

  SignupUsecase(this.repository);
  Future<User> call(String name, String email, String password) async {
    return await repository.signUp(name, email, password);
  }
}
