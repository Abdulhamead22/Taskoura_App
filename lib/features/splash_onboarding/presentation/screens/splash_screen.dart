import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/constants/image_path.dart';
import 'package:flutter_application_1/core/config/widgets/app_logo.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3));
    // context.read<SplashOnboardingBloc>().add(AppStartedEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashOnboardingBloc, SplashOnboardingState>(
        listener: (BuildContext context, state) {
          if (state is NavigateToHomeState) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (state is NavigateToLoginState) {
            Navigator.pushReplacementNamed(context, '/login');
          } else if (state is ShowOnboardingState) {
            Navigator.pushReplacementNamed(context, '/onboarding');
          }
        },
        child: const Scaffold(
          backgroundColor: ColorManager.backgroundLight,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLogo(
                  path: ImagePath.logo,
                ),
                SizedBox(
                  height: AppSizes.paddingMedium,
                ),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ));
  }
}
