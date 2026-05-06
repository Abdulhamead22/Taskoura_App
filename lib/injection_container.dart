import 'package:flutter_application_1/features/splash_onboarding/data/datasources/app_local_data_source.dart';
import 'package:flutter_application_1/features/splash_onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/check_onboarding_status_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/get_token_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
// استورد ملفاتك هنا (DataSources, Repositories, UseCases, Blocs)

final sl = GetIt.instance; // sl تعني Service Locator

Future<void> initApp() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  //bloc
  sl.registerFactory(() => SplashOnboardingBloc(
        checkOnboarding: sl(),
        completeOnboarding: sl(),
        getToken: sl(),
      ));

  // usecases
  sl.registerLazySingleton(() => CheckOnboardingStatusUseCase(sl()));
  sl.registerLazySingleton(() => CompleteOnboardingUseCase(sl()));
  sl.registerLazySingleton(() => GetTokenUseCase(sl()));

  // repository
  sl.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(sl()),
  );

  // data sources
  sl.registerLazySingleton<AppLocalDataSource>(
    () => AppLocalDataSourceImpl(sharedPreferences: sl()),
  );
}
