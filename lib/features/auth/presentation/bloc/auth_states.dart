abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

class AuthLoadingState extends AuthStates {}

//login
class LoginSuccessState extends AuthStates {}

class LoginErrorState extends AuthStates {
  final String error;
  LoginErrorState(this.error);
}

//sign up
class SignupSuccessState extends AuthStates {}

class SignupErrorState extends AuthStates {
  final String error;
  SignupErrorState(this.error);
}

//logout
class LogoutSuccessState extends AuthStates {}

class LogoutErrorState extends AuthStates {
  final String error;
  LogoutErrorState(this.error);
}

//password
class ForgotPasswordSuccessState extends AuthStates {}

class ForgotPasswordErrorState extends AuthStates {
  final String error;
  ForgotPasswordErrorState(this.error);
}

class ResetPasswordSuccessState extends AuthStates {}

class ResetPasswordErrorState extends AuthStates {
  final String error;
  ResetPasswordErrorState(this.error);
}

class VerifyResetCodeSuccessState extends AuthStates {}

class VerifyResetCodeErrorState extends AuthStates {
  final String error;
  VerifyResetCodeErrorState(this.error);
}
