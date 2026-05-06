import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_event.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/screens/splash_screen.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/injection_container.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SplashOnboardingBloc>()..add(AppStartedEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnboardingScreen(),
          '/login': (context) => const Home(),
          '/home': (context) => const Home(),   
        },
      ),
    );
  }
}
