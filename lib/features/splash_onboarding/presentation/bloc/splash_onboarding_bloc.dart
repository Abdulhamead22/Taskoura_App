import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/check_onboarding_status_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/domain/usecases/complete_onboarding_usecase.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_event.dart';
import 'package:flutter_application_1/features/splash_onboarding/presentation/bloc/splash_onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashOnboardingBloc extends Bloc<SplashOnboardingEvent, SplashOnboardingState> {
  final CheckOnboardingStatusUseCase checkOnboarding;
  final CompleteOnboardingUseCase completeOnboarding;

  SplashOnboardingBloc({
    required this.checkOnboarding,
    required this.completeOnboarding,
  }) : super(IniialState()) {

// start app any user
    on<AppStartedEvent>((event, emit) async {
      emit(LoadingState());
// check onboarding
      final isOnboardingComplete = await checkOnboarding();

     if (!isOnboardingComplete) {
        emit(ShowOnboardingState());
      } else {
        emit(NavigateToHomeState()); 
      }
    });
// complete onboarding with new user
    on<OnboardingCompletedEvent>((event, emit) async {
      await completeOnboarding();
      emit(NavigateToHomeState());
    });
  }
}