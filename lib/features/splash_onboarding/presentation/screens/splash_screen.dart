import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/constants/image_path.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_state.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashOnboardingBloc, SplashOnboardingState>(
      listener: (BuildContext context, state) {
        if (state is NavigateToHomeState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          );
        } else if (state is ShowOnboardingState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
          );
        }
      },
      child: const Scaffold(
        backgroundColor: ColorManager.backgroundLight,
        body: Center(
          child: Image(
            image: AssetImage('${ImagePath.image}/logo_Taskora.png'),
          ),
        ),
      ),
    );
  }
}
