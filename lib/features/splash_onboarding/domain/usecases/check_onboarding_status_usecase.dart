
import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';

class CheckOnboardingStatusUseCase {
  final OnboardingRepository repository;

  CheckOnboardingStatusUseCase(this.repository);
//call status of onboarding
  Future<bool> call() async {
    return await repository.checkOnboardingCompleted();
  }
}
