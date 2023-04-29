// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
  LoadingStatus get loadingStatus => throw _privateConstructorUsedError;
  SpamMessageData? get data => throw _privateConstructorUsedError;
  String get sms => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      SpamMessageData? data,
      String sms,
      String errorMessage});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? data = freezed,
    Object? sms = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpamMessageData?,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$_MainPageStateCopyWith(
          _$_MainPageState value, $Res Function(_$_MainPageState) then) =
      __$$_MainPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingStatus loadingStatus,
      SpamMessageData? data,
      String sms,
      String errorMessage});
}

/// @nodoc
class __$$_MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$_MainPageState>
    implements _$$_MainPageStateCopyWith<$Res> {
  __$$_MainPageStateCopyWithImpl(
      _$_MainPageState _value, $Res Function(_$_MainPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingStatus = null,
    Object? data = freezed,
    Object? sms = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_MainPageState(
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SpamMessageData?,
      sms: null == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {this.loadingStatus = LoadingStatus.initial,
      this.data,
      this.sms = '',
      this.errorMessage = ''});

  @override
  @JsonKey()
  final LoadingStatus loadingStatus;
  @override
  final SpamMessageData? data;
  @override
  @JsonKey()
  final String sms;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MainPageState(loadingStatus: $loadingStatus, data: $data, sms: $sms, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageState &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loadingStatus, data, sms, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      __$$_MainPageStateCopyWithImpl<_$_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {final LoadingStatus loadingStatus,
      final SpamMessageData? data,
      final String sms,
      final String errorMessage}) = _$_MainPageState;

  @override
  LoadingStatus get loadingStatus;
  @override
  SpamMessageData? get data;
  @override
  String get sms;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageStateCopyWith<_$_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
