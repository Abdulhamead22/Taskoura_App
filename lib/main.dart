import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash_onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:flutter_application_1/features/splash_onboarding/data/datasources/repositories/onboarding_repository_impl.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/repositories/onboarding_repository.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/check_onboarding_status_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_event.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/screens/splash_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefs = await SharedPreferences.getInstance();

  final isOnboarding =
      OnboardingLocalDataSourceImpl(sharedPreferences: sharedPrefs);

  final repository = OnboardingRepositoryImpl(isOnboarding);

  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  final OnboardingRepository repository;

  const MyApp({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashOnboardingBloc(
        checkOnboarding: CheckOnboardingStatusUseCase(repository),
        completeOnboarding: CompleteOnboardingUseCase(repository),
      )..add(AppStartedEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
