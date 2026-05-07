import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/constants/image_path.dart';
import 'package:flutter_application_1/core/config/widgets/app_elevated_button%20.dart';
import 'package:flutter_application_1/core/config/widgets/build_boarding_item.dart';
import 'package:flutter_application_1/core/config/widgets/custom_appbar.dart';
import 'package:flutter_application_1/core/config/widgets/dots_indicator.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/model/boarding_model.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_event.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<BoardingModel> boardingModel = [
    BoardingModel(
      ImagePath.onboarding1,
      "Follow your projects with ease",
      '"Manage all your projects and tasks from one place."',
      ColorManager.backgroundLight,
    ),
    BoardingModel(
      ImagePath.onboarding2,
      "Calculate your profits easily",
      '"Record the hours worked for each tasks and let the app calculate the amount due automatically."',
      ColorManager.secondary,
    ),
    BoardingModel(
      ImagePath.onboarding3,
      "Follow your projects with ease",
      '"Manage all your projects and tasks from one place."',
      ColorManager.primary,
    )
  ];
  final boardingController = PageController();
  bool isLast = false;
  int currentIndex = 0;

  @override
  void dispose() {
    boardingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashOnboardingBloc, SplashOnboardingState>(
      listener: (context, state) {
        if (state is NavigateToHomeState) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (state is NavigateToLoginState) {
          Navigator.pushReplacementNamed(context, '/login');
        }
      },
      child: Scaffold(
        backgroundColor: boardingModel[currentIndex].color,
        appBar: CustomAppBar(
          backgroundColor: boardingModel[currentIndex].color,
          actions: [
            if (!isLast)
              TextButton(
                onPressed: () {
                  submitToBoarding();
                },
                child: Text(
                  "SKIP",
                  style: AppTextStyles.buttonLabel
                      .copyWith(color: ColorManager.primary),
                ),
              ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingSmall),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardingController,
                  itemBuilder: (context, index) {
                    return BuildBoardingItem(
                        boardingModel: boardingModel[index], isLast: isLast);
                  },
                  itemCount: boardingModel.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                      if (value == boardingModel.length - 1) {
                        isLast = true;
                      } else {
                        isLast = false;
                      }
                    });
                  },
                ),
              ),
              DotsIndicator(
                count: boardingModel.length,
                currentIndex: currentIndex,
                color: isLast ? ColorManager.hover : null,
              ),
              const SizedBox(height: AppSizes.priorityHeight),
              if (isLast)
                AppElevatedButton(
                  text: 'Get Started',
                  textColor: ColorManager.primary,
                  onPressed: () {
                    submitToBoarding();
                  },
                  backgroundColor: ColorManager.backgroundLight,
                ),
              if (!isLast)
                AppElevatedButton(
                  text: 'Next',
                  onPressed: () {
                    boardingController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                ),
              // const Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              )
            ],
          ),
        ),
      ),
    );
  }

  void submitToBoarding() {
    context.read<SplashOnboardingBloc>().add(OnboardingCompletedEvent());
  }
}
