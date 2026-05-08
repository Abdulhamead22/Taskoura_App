import 'package:flutter_application_1/features/auth/domin/usecase/forgot_password_usecase.dart';
import 'package:flutter_application_1/features/auth/domin/usecase/login_usecase.dart';
import 'package:flutter_application_1/features/auth/domin/usecase/logout_usecase.dart';
import 'package:flutter_application_1/features/auth/domin/usecase/reset_password_usecase.dart';
import 'package:flutter_application_1/features/auth/domin/usecase/signup_usecase.dart';
import 'package:flutter_application_1/features/auth/domin/usecase/verify_reset_code_usecase.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/auth_events.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvents, AuthStates> {
  final LoginUsecase login;
  final SignupUsecase signup;
  final LogoutUsecase logout;
  final ForgotPasswordUsecase forgetPassword;
  final ResetPasswordUsecase resetPassword;
  final VerifyResetCodeUsecase verifyCode;
  AuthBloc(this.login, this.signup, this.logout, this.forgetPassword,
      this.resetPassword, this.verifyCode)
      : super(AuthInitialState()) {
    //login by the user
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      await login(event.email, event.password).then(
        (value) {
          emit(LoginSuccessState());
        },
      ).catchError((error) {
        emit(LoginErrorState(error.toString()));
      });
    });

    //Sign by new user
    on<SignUpEvent>((event, emit) async {
      emit(AuthLoadingState());
      await signup(event.name, event.email, event.password).then(
        (value) {
          emit(SignupSuccessState());
        },
      ).catchError((error) {
        emit(SignupErrorState(error.toString()));
      });
    });

    //logout by the user
    on<LogoutEvent>((event, emit) async {
      emit(AuthLoadingState());
      await logout().then(
        (value) {
          emit(LogoutSuccessState());
        },
      ).catchError((error) {
        emit(LogoutErrorState(error.toString()));
      });
    });

    //forget password of the user
    on<ForgotPasswordEvent>((event, emit) async {
      emit(AuthLoadingState());
      await forgetPassword(event.email).then(
        (value) {
          emit(ForgotPasswordSuccessState());
        },
      ).catchError((error) {
        emit(ForgotPasswordErrorState(error.toString()));
      });
    });

    //reset password by the user
    on<ResetPasswordEvent>((event, emit) async {
      emit(AuthLoadingState());
      await resetPassword(event.email, event.newPassword).then(
        (value) {
          emit(ResetPasswordSuccessState());
        },
      ).catchError((error) {
        emit(ResetPasswordErrorState(error.toString()));
      });
    });

    //verify cado to reset password by the email
    on<VerifyResetCodeEvent>((event, emit) async {
      emit(AuthLoadingState());
      await verifyCode(event.code).then(
        (value) {
          emit(VerifyResetCodeSuccessState());
        },
      ).catchError((error) {
        emit(VerifyResetCodeErrorState(error.toString()));
      });
    });
  }
}
