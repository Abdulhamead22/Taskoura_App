import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/config/constants/app_sizes.dart';
import 'package:flutter_application_1/core/config/constants/color_manager.dart';
import 'package:flutter_application_1/core/config/constants/image_path.dart';
import 'package:flutter_application_1/core/config/widgets/app_elevated_button%20.dart';
import 'package:flutter_application_1/core/config/widgets/dots_indicator.dart';
import 'package:flutter_application_1/core/extensions/text_style_extension.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_bloc.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_event.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_state.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;
  final Color color;
  BoardingModel(this.image, this.title, this.body, this.color);
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<BoardingModel> boardingModel = [
    BoardingModel(
      '${ImagePath.image}/onboarding1.png',
      "Follow your projects with ease",
      '"Manage all your projects and tasks from one place."',
      ColorManager.backgroundLight,
    ),
    BoardingModel(
      '${ImagePath.image}/onboarding2.png',
      "Calculate your profits easily",
      '"Record the hours worked for each tasks and let the app calculate the amount due automatically."',
      ColorManager.secondary,
    ),
    BoardingModel(
      '${ImagePath.image}/onboarding3.png',
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
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
            (route) {
              return false;
            },
          );
        }
      },
      child: Scaffold(
        backgroundColor: boardingModel[currentIndex].color,
        appBar: AppBar(
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
                    return buildBoardingItem(boardingModel[index]);
                  },
                  itemCount: boardingModel.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                    if (value == boardingModel.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
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
              const SizedBox(
                height: 190,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(model.image),
        ),
        const SizedBox(height: AppSizes.paddingMedium),
        Text(
          model.title,
          style: AppTextStyles.headingLarge.copyWith(
            color: ColorManager.submitButtonText,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.priorityHeight),
        Text(
          model.body,
          style: AppTextStyles.bodyMedium.copyWith(
            color: isLast
                ? ColorManager.backgroundLight
                : ColorManager.secondaryText,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  void submitToBoarding() {
    context.read<SplashOnboardingBloc>().add(OnboardingCompletedEvent());
  }
}
