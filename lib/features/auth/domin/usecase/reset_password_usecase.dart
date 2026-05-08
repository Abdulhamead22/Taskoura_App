import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';

class ResetPasswordUsecase {
  final AuthRepository repository;

  ResetPasswordUsecase(this.repository);
  Future<bool> call(String email, String newPassword) async {
    return await repository.resetPassword(email,newPassword);
  }
}
