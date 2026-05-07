import 'package:flutter_application_1/features/auth/domin/repositories/auth_repository.dart';

class LogoutUsecase {
  final AuthRepository repository;

  LogoutUsecase(this.repository);
  Future<String> call() async {
    return await repository.logout();
  }
}
