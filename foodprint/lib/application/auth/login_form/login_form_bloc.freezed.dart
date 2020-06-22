// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$LoginFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginPressed(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result loginPressed(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginPressed(LoginWithEmailAndPasswordPressed value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginPressed(LoginWithEmailAndPasswordPressed value),
    @required Result orElse(),
  });
}

class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  LoginWithEmailAndPasswordPressed loginPressed() {
    return const LoginWithEmailAndPasswordPressed();
  }
}

const $LoginFormEvent = _$LoginFormEventTearOff();

class _$UsernameChanged
    with DiagnosticableTreeMixin
    implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormEvent.usernameChanged'))
      ..add(DiagnosticsProperty('usernameStr', usernameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  _$UsernameChanged copyWith({
    Object usernameStr = freezed,
  }) {
    return _$UsernameChanged(
      usernameStr == freezed ? this.usernameStr : usernameStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginPressed(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result loginPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginPressed(LoginWithEmailAndPasswordPressed value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginPressed(LoginWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginFormEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;

  UsernameChanged copyWith({String usernameStr});
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  _$PasswordChanged copyWith({
    Object passwordStr = freezed,
  }) {
    return _$PasswordChanged(
      passwordStr == freezed ? this.passwordStr : passwordStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginPressed(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result loginPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginPressed(LoginWithEmailAndPasswordPressed value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginPressed(LoginWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;

  PasswordChanged copyWith({String passwordStr});
}

class _$LoginWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements LoginWithEmailAndPasswordPressed {
  const _$LoginWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormEvent.loginPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginFormEvent.loginPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginPressed(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result passwordChanged(String passwordStr),
    Result loginPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(UsernameChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginPressed(LoginWithEmailAndPasswordPressed value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(loginPressed != null);
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(UsernameChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginPressed(LoginWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPasswordPressed implements LoginFormEvent {
  const factory LoginWithEmailAndPasswordPressed() =
      _$LoginWithEmailAndPasswordPressed;
}

mixin _$LoginFormState {
  Username get username;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<LoginFailure, Unit>> get authFailureOrSuccessOption;

  LoginFormState copyWith(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption});
}

class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

  _LoginFormState call(
      {@required
          Username username,
      @required
          Password password,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption}) {
    return _LoginFormState(
      username: username,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

const $LoginFormState = _$LoginFormStateTearOff();

class _$_LoginFormState
    with DiagnosticableTreeMixin
    implements _LoginFormState {
  const _$_LoginFormState(
      {@required this.username,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(username != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginFormState(username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginFormState'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$_LoginFormState copyWith({
    Object username = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _$_LoginFormState(
      username: username == freezed ? this.username : username as Username,
      password: password == freezed ? this.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? this.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? this.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? this.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<LoginFailure, Unit>>,
    );
  }
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
          {@required
              Username username,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption}) =
      _$_LoginFormState;

  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<LoginFailure, Unit>> get authFailureOrSuccessOption;

  @override
  _LoginFormState copyWith(
      {Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<LoginFailure, Unit>> authFailureOrSuccessOption});
}
