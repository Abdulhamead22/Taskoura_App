import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';

class GetTokenUseCase {
  final OnboardingRepository repository;

  GetTokenUseCase(this.repository);
//call status of onboarding
  Future<String?> call() async {
    return await repository.hasToken();
  }
}
