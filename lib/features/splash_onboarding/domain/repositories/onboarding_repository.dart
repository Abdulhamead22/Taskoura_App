abstract class OnboardingRepository {
  Future<bool> checkOnboardingCompleted();
  Future<void> completeOnboarding();
  Future<String?> hasToken();
}