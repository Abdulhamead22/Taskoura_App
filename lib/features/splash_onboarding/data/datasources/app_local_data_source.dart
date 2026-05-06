import 'package:shared_preferences/shared_preferences.dart';

abstract class AppLocalDataSource {
  Future<bool> isOnboardingCompleted();
  Future<void> cacheOnboardingCompletion();
  Future<String?> getToken();
}

class AppLocalDataSourceImpl implements AppLocalDataSource {
  final SharedPreferences sharedPreferences;

  AppLocalDataSourceImpl({required this.sharedPreferences});

  static const String _onboardingKey  = 'k_onboarding_complete';
  static const String _tokenKey = 'k_auth_token';
  @override
  //get value of onboarding
  Future<bool> isOnboardingCompleted() async {
    return sharedPreferences.getBool(_onboardingKey ) ?? false;
  }

  @override
  //set or save value of onboarding
  Future<void> cacheOnboardingCompletion() async {
    await sharedPreferences.setBool(_onboardingKey , true);
  }

  @override
  //get token of user
  Future<String?> getToken() async {
    return sharedPreferences.getString(_tokenKey);
  }
}
