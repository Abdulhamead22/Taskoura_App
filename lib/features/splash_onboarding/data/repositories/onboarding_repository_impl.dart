import 'package:flutter_application_1/features/splash_onboarding/data/datasources/app_local_data_source.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final AppLocalDataSource onboardingLocalDataSource;

  OnboardingRepositoryImpl(this.onboardingLocalDataSource);

  @override
  //check of value in onboarding
  Future<bool> checkOnboardingCompleted() {
    return onboardingLocalDataSource.isOnboardingCompleted();
  }

  @override
  //set or save of value in onboarding
  Future<void> completeOnboarding() {
    return onboardingLocalDataSource.cacheOnboardingCompletion();
  }

  @override
  //if token is available
  Future<String?> hasToken() async {
    return  await onboardingLocalDataSource.getToken();
  }
}
