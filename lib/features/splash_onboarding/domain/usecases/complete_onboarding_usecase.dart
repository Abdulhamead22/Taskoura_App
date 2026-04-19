
import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';

class CompleteOnboardingUseCase {
  final OnboardingRepository repository;

  CompleteOnboardingUseCase(this.repository);
//call is complete onboarding
  Future<void> call() async {
    await repository.completeOnboarding();
  }
}
