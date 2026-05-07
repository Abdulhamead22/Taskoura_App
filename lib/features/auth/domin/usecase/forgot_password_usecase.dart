import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';

class ForgotPasswordUsecase {
  final AuthRepository repository;

  ForgotPasswordUsecase(this.repository);
  Future<String> call() async {
    return await repository.forgotPassword();
  }
}
