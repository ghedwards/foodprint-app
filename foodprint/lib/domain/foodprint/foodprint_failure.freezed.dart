// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'foodprint_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FoodprintFailureTearOff {
  const _$FoodprintFailureTearOff();

  _UnauthorizedToken unauthorizedToken() {
    return const _UnauthorizedToken();
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

// ignore: unused_element
const $FoodprintFailure = _$FoodprintFailureTearOff();

mixin _$FoodprintFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorizedToken(),
    @required Result serverError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorizedToken(),
    Result serverError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorizedToken(_UnauthorizedToken value),
    @required Result serverError(_ServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorizedToken(_UnauthorizedToken value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  });
}

abstract class $FoodprintFailureCopyWith<$Res> {
  factory $FoodprintFailureCopyWith(
          FoodprintFailure value, $Res Function(FoodprintFailure) then) =
      _$FoodprintFailureCopyWithImpl<$Res>;
}

class _$FoodprintFailureCopyWithImpl<$Res>
    implements $FoodprintFailureCopyWith<$Res> {
  _$FoodprintFailureCopyWithImpl(this._value, this._then);

  final FoodprintFailure _value;
  // ignore: unused_field
  final $Res Function(FoodprintFailure) _then;
}

abstract class _$UnauthorizedTokenCopyWith<$Res> {
  factory _$UnauthorizedTokenCopyWith(
          _UnauthorizedToken value, $Res Function(_UnauthorizedToken) then) =
      __$UnauthorizedTokenCopyWithImpl<$Res>;
}

class __$UnauthorizedTokenCopyWithImpl<$Res>
    extends _$FoodprintFailureCopyWithImpl<$Res>
    implements _$UnauthorizedTokenCopyWith<$Res> {
  __$UnauthorizedTokenCopyWithImpl(
      _UnauthorizedToken _value, $Res Function(_UnauthorizedToken) _then)
      : super(_value, (v) => _then(v as _UnauthorizedToken));

  @override
  _UnauthorizedToken get _value => super._value as _UnauthorizedToken;
}

class _$_UnauthorizedToken implements _UnauthorizedToken {
  const _$_UnauthorizedToken();

  @override
  String toString() {
    return 'FoodprintFailure.unauthorizedToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthorizedToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorizedToken(),
    @required Result serverError(),
  }) {
    assert(unauthorizedToken != null);
    assert(serverError != null);
    return unauthorizedToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorizedToken(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorizedToken != null) {
      return unauthorizedToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorizedToken(_UnauthorizedToken value),
    @required Result serverError(_ServerError value),
  }) {
    assert(unauthorizedToken != null);
    assert(serverError != null);
    return unauthorizedToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorizedToken(_UnauthorizedToken value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorizedToken != null) {
      return unauthorizedToken(this);
    }
    return orElse();
  }
}

abstract class _UnauthorizedToken implements FoodprintFailure {
  const factory _UnauthorizedToken() = _$_UnauthorizedToken;
}

abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

class __$ServerErrorCopyWithImpl<$Res>
    extends _$FoodprintFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'FoodprintFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorizedToken(),
    @required Result serverError(),
  }) {
    assert(unauthorizedToken != null);
    assert(serverError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorizedToken(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorizedToken(_UnauthorizedToken value),
    @required Result serverError(_ServerError value),
  }) {
    assert(unauthorizedToken != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorizedToken(_UnauthorizedToken value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements FoodprintFailure {
  const factory _ServerError() = _$_ServerError;
}
