abstract class AuthEvents {}

class LoginEvent extends AuthEvents {
  final String email;
  final String password;

  LoginEvent({
    required this.email,
    required this.password,
  });
}

class SignUpEvent extends AuthEvents {
  final String name;
  final String email;
  final String password;

  SignUpEvent({
    required this.name,
    required this.email,
    required this.password,
  });
}

class LogoutEvent extends AuthEvents {}

class ForgotPasswordEvent extends AuthEvents {
  final String email;

  ForgotPasswordEvent({
    required this.email,
  });
}

class VerifyResetCodeEvent extends AuthEvents {
  final String code;

  VerifyResetCodeEvent({
    required this.code,
  });
}

class ResetPasswordEvent extends AuthEvents {
  final String email;
  final String newPassword;

  ResetPasswordEvent({
    required this.email,
    required this.newPassword,
  });
}
