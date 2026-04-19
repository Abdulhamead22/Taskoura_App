import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingLocalDataSource {
  Future<bool> isOnboardingCompleted();
  Future<void> cacheOnboardingCompletion();
  Future<String?> getToken();
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPreferences sharedPreferences;

  OnboardingLocalDataSourceImpl({required this.sharedPreferences});

  static const String onboarding = 'isComplete';
  static const String tokenKey = 'TOKEN';
  @override
  //get value of onboarding
  Future<bool> isOnboardingCompleted() async {
    return sharedPreferences.getBool(onboarding) ?? false;
  }

  @override
  //set or save value of onboarding
  Future<void> cacheOnboardingCompletion() async {
    await sharedPreferences.setBool(onboarding, true);
  }

  @override
  //get token of user
  Future<String?> getToken() async {
    return sharedPreferences.getString(tokenKey);
}
}
