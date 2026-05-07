import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';

class VerifyResetCodeUsecase {
  final AuthRepository repository;

  VerifyResetCodeUsecase(this.repository);
  Future<bool> call() async {
    return await repository.verifyResetCode();
  }
}
