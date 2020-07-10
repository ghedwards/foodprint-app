// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhotoEntityTearOff {
  const _$PhotoEntityTearOff();

  _PhotoEntity call(
      {@required StoragePath storagePath,
      URL url,
      @required PhotoDetailEntity photoDetail,
      @required Timestamp timestamp}) {
    return _PhotoEntity(
      storagePath: storagePath,
      url: url,
      photoDetail: photoDetail,
      timestamp: timestamp,
    );
  }
}

// ignore: unused_element
const $PhotoEntity = _$PhotoEntityTearOff();

mixin _$PhotoEntity {
  StoragePath get storagePath;
  URL get url;
  PhotoDetailEntity get photoDetail;
  Timestamp get timestamp;

  $PhotoEntityCopyWith<PhotoEntity> get copyWith;
}

abstract class $PhotoEntityCopyWith<$Res> {
  factory $PhotoEntityCopyWith(
          PhotoEntity value, $Res Function(PhotoEntity) then) =
      _$PhotoEntityCopyWithImpl<$Res>;
  $Res call(
      {StoragePath storagePath,
      URL url,
      PhotoDetailEntity photoDetail,
      Timestamp timestamp});

  $PhotoDetailEntityCopyWith<$Res> get photoDetail;
}

class _$PhotoEntityCopyWithImpl<$Res> implements $PhotoEntityCopyWith<$Res> {
  _$PhotoEntityCopyWithImpl(this._value, this._then);

  final PhotoEntity _value;
  // ignore: unused_field
  final $Res Function(PhotoEntity) _then;

  @override
  $Res call({
    Object storagePath = freezed,
    Object url = freezed,
    Object photoDetail = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      storagePath: storagePath == freezed
          ? _value.storagePath
          : storagePath as StoragePath,
      url: url == freezed ? _value.url : url as URL,
      photoDetail: photoDetail == freezed
          ? _value.photoDetail
          : photoDetail as PhotoDetailEntity,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }

  @override
  $PhotoDetailEntityCopyWith<$Res> get photoDetail {
    if (_value.photoDetail == null) {
      return null;
    }
    return $PhotoDetailEntityCopyWith<$Res>(_value.photoDetail, (value) {
      return _then(_value.copyWith(photoDetail: value));
    });
  }
}

abstract class _$PhotoEntityCopyWith<$Res>
    implements $PhotoEntityCopyWith<$Res> {
  factory _$PhotoEntityCopyWith(
          _PhotoEntity value, $Res Function(_PhotoEntity) then) =
      __$PhotoEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {StoragePath storagePath,
      URL url,
      PhotoDetailEntity photoDetail,
      Timestamp timestamp});

  @override
  $PhotoDetailEntityCopyWith<$Res> get photoDetail;
}

class __$PhotoEntityCopyWithImpl<$Res> extends _$PhotoEntityCopyWithImpl<$Res>
    implements _$PhotoEntityCopyWith<$Res> {
  __$PhotoEntityCopyWithImpl(
      _PhotoEntity _value, $Res Function(_PhotoEntity) _then)
      : super(_value, (v) => _then(v as _PhotoEntity));

  @override
  _PhotoEntity get _value => super._value as _PhotoEntity;

  @override
  $Res call({
    Object storagePath = freezed,
    Object url = freezed,
    Object photoDetail = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_PhotoEntity(
      storagePath: storagePath == freezed
          ? _value.storagePath
          : storagePath as StoragePath,
      url: url == freezed ? _value.url : url as URL,
      photoDetail: photoDetail == freezed
          ? _value.photoDetail
          : photoDetail as PhotoDetailEntity,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }
}

class _$_PhotoEntity extends _PhotoEntity {
  const _$_PhotoEntity(
      {@required this.storagePath,
      this.url,
      @required this.photoDetail,
      @required this.timestamp})
      : assert(storagePath != null),
        assert(photoDetail != null),
        assert(timestamp != null),
        super._();

  @override
  final StoragePath storagePath;
  @override
  final URL url;
  @override
  final PhotoDetailEntity photoDetail;
  @override
  final Timestamp timestamp;

  @override
  String toString() {
    return 'PhotoEntity(storagePath: $storagePath, url: $url, photoDetail: $photoDetail, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoEntity &&
            (identical(other.storagePath, storagePath) ||
                const DeepCollectionEquality()
                    .equals(other.storagePath, storagePath)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.photoDetail, photoDetail) ||
                const DeepCollectionEquality()
                    .equals(other.photoDetail, photoDetail)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(storagePath) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(photoDetail) ^
      const DeepCollectionEquality().hash(timestamp);

  @override
  _$PhotoEntityCopyWith<_PhotoEntity> get copyWith =>
      __$PhotoEntityCopyWithImpl<_PhotoEntity>(this, _$identity);
}

abstract class _PhotoEntity extends PhotoEntity {
  const _PhotoEntity._() : super._();
  const factory _PhotoEntity(
      {@required StoragePath storagePath,
      URL url,
      @required PhotoDetailEntity photoDetail,
      @required Timestamp timestamp}) = _$_PhotoEntity;

  @override
  StoragePath get storagePath;
  @override
  URL get url;
  @override
  PhotoDetailEntity get photoDetail;
  @override
  Timestamp get timestamp;
  @override
  _$PhotoEntityCopyWith<_PhotoEntity> get copyWith;
}
