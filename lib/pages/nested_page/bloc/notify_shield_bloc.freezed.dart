// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_shield_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotifyShieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyShieldEventCopyWith<$Res> {
  factory $NotifyShieldEventCopyWith(
          NotifyShieldEvent value, $Res Function(NotifyShieldEvent) then) =
      _$NotifyShieldEventCopyWithImpl<$Res, NotifyShieldEvent>;
}

/// @nodoc
class _$NotifyShieldEventCopyWithImpl<$Res, $Val extends NotifyShieldEvent>
    implements $NotifyShieldEventCopyWith<$Res> {
  _$NotifyShieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyShieldEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NotifyShieldEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyShieldEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NotifyShieldEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotifyShieldEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$NotifyShieldState {
  int? get lastUpdateTime => throw _privateConstructorUsedError;

  /// Create a copy of NotifyShieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifyShieldStateCopyWith<NotifyShieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyShieldStateCopyWith<$Res> {
  factory $NotifyShieldStateCopyWith(
          NotifyShieldState value, $Res Function(NotifyShieldState) then) =
      _$NotifyShieldStateCopyWithImpl<$Res, NotifyShieldState>;
  @useResult
  $Res call({int? lastUpdateTime});
}

/// @nodoc
class _$NotifyShieldStateCopyWithImpl<$Res, $Val extends NotifyShieldState>
    implements $NotifyShieldStateCopyWith<$Res> {
  _$NotifyShieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyShieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_value.copyWith(
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifyShieldStateImplCopyWith<$Res>
    implements $NotifyShieldStateCopyWith<$Res> {
  factory _$$NotifyShieldStateImplCopyWith(_$NotifyShieldStateImpl value,
          $Res Function(_$NotifyShieldStateImpl) then) =
      __$$NotifyShieldStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? lastUpdateTime});
}

/// @nodoc
class __$$NotifyShieldStateImplCopyWithImpl<$Res>
    extends _$NotifyShieldStateCopyWithImpl<$Res, _$NotifyShieldStateImpl>
    implements _$$NotifyShieldStateImplCopyWith<$Res> {
  __$$NotifyShieldStateImplCopyWithImpl(_$NotifyShieldStateImpl _value,
      $Res Function(_$NotifyShieldStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyShieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_$NotifyShieldStateImpl(
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NotifyShieldStateImpl implements _NotifyShieldState {
  const _$NotifyShieldStateImpl({this.lastUpdateTime});

  @override
  final int? lastUpdateTime;

  @override
  String toString() {
    return 'NotifyShieldState(lastUpdateTime: $lastUpdateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyShieldStateImpl &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastUpdateTime);

  /// Create a copy of NotifyShieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyShieldStateImplCopyWith<_$NotifyShieldStateImpl> get copyWith =>
      __$$NotifyShieldStateImplCopyWithImpl<_$NotifyShieldStateImpl>(
          this, _$identity);
}

abstract class _NotifyShieldState implements NotifyShieldState {
  const factory _NotifyShieldState({final int? lastUpdateTime}) =
      _$NotifyShieldStateImpl;

  @override
  int? get lastUpdateTime;

  /// Create a copy of NotifyShieldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyShieldStateImplCopyWith<_$NotifyShieldStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
