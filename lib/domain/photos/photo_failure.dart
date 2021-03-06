import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_failure.freezed.dart';

@freezed
abstract class PhotoFailure with _$PhotoFailure {
  const factory PhotoFailure.serverError() = _ServerError;
  const factory PhotoFailure.invalidPhoto() = _InvalidPhoto;
  const factory PhotoFailure.noInternet() = _NoInternet;
}
