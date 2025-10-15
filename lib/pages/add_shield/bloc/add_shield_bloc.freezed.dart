// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_shield_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddShieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShieldEventCopyWith<$Res> {
  factory $AddShieldEventCopyWith(
          AddShieldEvent value, $Res Function(AddShieldEvent) then) =
      _$AddShieldEventCopyWithImpl<$Res, AddShieldEvent>;
}

/// @nodoc
class _$AddShieldEventCopyWithImpl<$Res, $Val extends AddShieldEvent>
    implements $AddShieldEventCopyWith<$Res> {
  _$AddShieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeStepImplCopyWith<$Res> {
  factory _$$ChangeStepImplCopyWith(
          _$ChangeStepImpl value, $Res Function(_$ChangeStepImpl) then) =
      __$$ChangeStepImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddShieldStep step});
}

/// @nodoc
class __$$ChangeStepImplCopyWithImpl<$Res>
    extends _$AddShieldEventCopyWithImpl<$Res, _$ChangeStepImpl>
    implements _$$ChangeStepImplCopyWith<$Res> {
  __$$ChangeStepImplCopyWithImpl(
      _$ChangeStepImpl _value, $Res Function(_$ChangeStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$ChangeStepImpl(
      null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as AddShieldStep,
    ));
  }
}

/// @nodoc

class _$ChangeStepImpl implements _ChangeStep {
  const _$ChangeStepImpl(this.step);

  @override
  final AddShieldStep step;

  @override
  String toString() {
    return 'AddShieldEvent.changeStep(step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStepImpl &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStepImplCopyWith<_$ChangeStepImpl> get copyWith =>
      __$$ChangeStepImplCopyWithImpl<_$ChangeStepImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) {
    return changeStep(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) {
    return changeStep?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeStep != null) {
      return changeStep(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) {
    return changeStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeStep != null) {
      return changeStep(this);
    }
    return orElse();
  }
}

abstract class _ChangeStep implements AddShieldEvent {
  const factory _ChangeStep(final AddShieldStep step) = _$ChangeStepImpl;

  AddShieldStep get step;

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStepImplCopyWith<_$ChangeStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeMonthImplCopyWith<$Res> {
  factory _$$ChangeMonthImplCopyWith(
          _$ChangeMonthImpl value, $Res Function(_$ChangeMonthImpl) then) =
      __$$ChangeMonthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShieldMonth month});
}

/// @nodoc
class __$$ChangeMonthImplCopyWithImpl<$Res>
    extends _$AddShieldEventCopyWithImpl<$Res, _$ChangeMonthImpl>
    implements _$$ChangeMonthImplCopyWith<$Res> {
  __$$ChangeMonthImplCopyWithImpl(
      _$ChangeMonthImpl _value, $Res Function(_$ChangeMonthImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
  }) {
    return _then(_$ChangeMonthImpl(
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as ShieldMonth,
    ));
  }
}

/// @nodoc

class _$ChangeMonthImpl implements _ChangeMonth {
  const _$ChangeMonthImpl(this.month);

  @override
  final ShieldMonth month;

  @override
  String toString() {
    return 'AddShieldEvent.changeMonth(month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMonthImpl &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMonthImplCopyWith<_$ChangeMonthImpl> get copyWith =>
      __$$ChangeMonthImplCopyWithImpl<_$ChangeMonthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) {
    return changeMonth(month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) {
    return changeMonth?.call(month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeMonth != null) {
      return changeMonth(month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) {
    return changeMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeMonth != null) {
      return changeMonth(this);
    }
    return orElse();
  }
}

abstract class _ChangeMonth implements AddShieldEvent {
  const factory _ChangeMonth(final ShieldMonth month) = _$ChangeMonthImpl;

  ShieldMonth get month;

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeMonthImplCopyWith<_$ChangeMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeQuantityImplCopyWith<$Res> {
  factory _$$ChangeQuantityImplCopyWith(_$ChangeQuantityImpl value,
          $Res Function(_$ChangeQuantityImpl) then) =
      __$$ChangeQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double quantity});
}

/// @nodoc
class __$$ChangeQuantityImplCopyWithImpl<$Res>
    extends _$AddShieldEventCopyWithImpl<$Res, _$ChangeQuantityImpl>
    implements _$$ChangeQuantityImplCopyWith<$Res> {
  __$$ChangeQuantityImplCopyWithImpl(
      _$ChangeQuantityImpl _value, $Res Function(_$ChangeQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$ChangeQuantityImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeQuantityImpl implements _ChangeQuantity {
  const _$ChangeQuantityImpl(this.quantity);

  @override
  final double quantity;

  @override
  String toString() {
    return 'AddShieldEvent.changeQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeQuantityImplCopyWith<_$ChangeQuantityImpl> get copyWith =>
      __$$ChangeQuantityImplCopyWithImpl<_$ChangeQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) {
    return changeQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) {
    return changeQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) {
    return changeQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(this);
    }
    return orElse();
  }
}

abstract class _ChangeQuantity implements AddShieldEvent {
  const factory _ChangeQuantity(final double quantity) = _$ChangeQuantityImpl;

  double get quantity;

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeQuantityImplCopyWith<_$ChangeQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeConfigImplCopyWith<$Res> {
  factory _$$ChangeConfigImplCopyWith(
          _$ChangeConfigImpl value, $Res Function(_$ChangeConfigImpl) then) =
      __$$ChangeConfigImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShieldConfig config});

  $ShieldConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$ChangeConfigImplCopyWithImpl<$Res>
    extends _$AddShieldEventCopyWithImpl<$Res, _$ChangeConfigImpl>
    implements _$$ChangeConfigImplCopyWith<$Res> {
  __$$ChangeConfigImplCopyWithImpl(
      _$ChangeConfigImpl _value, $Res Function(_$ChangeConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = null,
  }) {
    return _then(_$ChangeConfigImpl(
      null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ShieldConfig,
    ));
  }

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShieldConfigCopyWith<$Res> get config {
    return $ShieldConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value));
    });
  }
}

/// @nodoc

class _$ChangeConfigImpl implements _ChangeConfig {
  const _$ChangeConfigImpl(this.config);

  @override
  final ShieldConfig config;

  @override
  String toString() {
    return 'AddShieldEvent.changeConfig(config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeConfigImpl &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeConfigImplCopyWith<_$ChangeConfigImpl> get copyWith =>
      __$$ChangeConfigImplCopyWithImpl<_$ChangeConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) {
    return changeConfig(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) {
    return changeConfig?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeConfig != null) {
      return changeConfig(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) {
    return changeConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeConfig != null) {
      return changeConfig(this);
    }
    return orElse();
  }
}

abstract class _ChangeConfig implements AddShieldEvent {
  const factory _ChangeConfig(final ShieldConfig config) = _$ChangeConfigImpl;

  ShieldConfig get config;

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeConfigImplCopyWith<_$ChangeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$AddShieldEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'AddShieldEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddShieldStep step) changeStep,
    required TResult Function(ShieldMonth month) changeMonth,
    required TResult Function(double quantity) changeQuantity,
    required TResult Function(ShieldConfig config) changeConfig,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddShieldStep step)? changeStep,
    TResult? Function(ShieldMonth month)? changeMonth,
    TResult? Function(double quantity)? changeQuantity,
    TResult? Function(ShieldConfig config)? changeConfig,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddShieldStep step)? changeStep,
    TResult Function(ShieldMonth month)? changeMonth,
    TResult Function(double quantity)? changeQuantity,
    TResult Function(ShieldConfig config)? changeConfig,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeStep value) changeStep,
    required TResult Function(_ChangeMonth value) changeMonth,
    required TResult Function(_ChangeQuantity value) changeQuantity,
    required TResult Function(_ChangeConfig value) changeConfig,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeStep value)? changeStep,
    TResult? Function(_ChangeMonth value)? changeMonth,
    TResult? Function(_ChangeQuantity value)? changeQuantity,
    TResult? Function(_ChangeConfig value)? changeConfig,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeStep value)? changeStep,
    TResult Function(_ChangeMonth value)? changeMonth,
    TResult Function(_ChangeQuantity value)? changeQuantity,
    TResult Function(_ChangeConfig value)? changeConfig,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements AddShieldEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$AddShieldState {
  ShieldMonth? get month => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;
  ShieldConfig? get config => throw _privateConstructorUsedError;
  AddShieldStep get step => throw _privateConstructorUsedError;
  AddShieldSubmitStatus get submitStatus => throw _privateConstructorUsedError;

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddShieldStateCopyWith<AddShieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShieldStateCopyWith<$Res> {
  factory $AddShieldStateCopyWith(
          AddShieldState value, $Res Function(AddShieldState) then) =
      _$AddShieldStateCopyWithImpl<$Res, AddShieldState>;
  @useResult
  $Res call(
      {ShieldMonth? month,
      double? quantity,
      ShieldConfig? config,
      AddShieldStep step,
      AddShieldSubmitStatus submitStatus});

  $ShieldConfigCopyWith<$Res>? get config;
}

/// @nodoc
class _$AddShieldStateCopyWithImpl<$Res, $Val extends AddShieldState>
    implements $AddShieldStateCopyWith<$Res> {
  _$AddShieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? quantity = freezed,
    Object? config = freezed,
    Object? step = null,
    Object? submitStatus = null,
  }) {
    return _then(_value.copyWith(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as ShieldMonth?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ShieldConfig?,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as AddShieldStep,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AddShieldSubmitStatus,
    ) as $Val);
  }

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShieldConfigCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $ShieldConfigCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddShieldStateImplCopyWith<$Res>
    implements $AddShieldStateCopyWith<$Res> {
  factory _$$AddShieldStateImplCopyWith(_$AddShieldStateImpl value,
          $Res Function(_$AddShieldStateImpl) then) =
      __$$AddShieldStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShieldMonth? month,
      double? quantity,
      ShieldConfig? config,
      AddShieldStep step,
      AddShieldSubmitStatus submitStatus});

  @override
  $ShieldConfigCopyWith<$Res>? get config;
}

/// @nodoc
class __$$AddShieldStateImplCopyWithImpl<$Res>
    extends _$AddShieldStateCopyWithImpl<$Res, _$AddShieldStateImpl>
    implements _$$AddShieldStateImplCopyWith<$Res> {
  __$$AddShieldStateImplCopyWithImpl(
      _$AddShieldStateImpl _value, $Res Function(_$AddShieldStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? quantity = freezed,
    Object? config = freezed,
    Object? step = null,
    Object? submitStatus = null,
  }) {
    return _then(_$AddShieldStateImpl(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as ShieldMonth?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as ShieldConfig?,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as AddShieldStep,
      submitStatus: null == submitStatus
          ? _value.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as AddShieldSubmitStatus,
    ));
  }
}

/// @nodoc

class _$AddShieldStateImpl implements _AddShieldState {
  const _$AddShieldStateImpl(
      {this.month,
      this.quantity,
      this.config,
      this.step = AddShieldStep.quantity,
      this.submitStatus = AddShieldSubmitStatus.idle});

  @override
  final ShieldMonth? month;
  @override
  final double? quantity;
  @override
  final ShieldConfig? config;
  @override
  @JsonKey()
  final AddShieldStep step;
  @override
  @JsonKey()
  final AddShieldSubmitStatus submitStatus;

  @override
  String toString() {
    return 'AddShieldState(month: $month, quantity: $quantity, config: $config, step: $step, submitStatus: $submitStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShieldStateImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, month, quantity, config, step, submitStatus);

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShieldStateImplCopyWith<_$AddShieldStateImpl> get copyWith =>
      __$$AddShieldStateImplCopyWithImpl<_$AddShieldStateImpl>(
          this, _$identity);
}

abstract class _AddShieldState implements AddShieldState {
  const factory _AddShieldState(
      {final ShieldMonth? month,
      final double? quantity,
      final ShieldConfig? config,
      final AddShieldStep step,
      final AddShieldSubmitStatus submitStatus}) = _$AddShieldStateImpl;

  @override
  ShieldMonth? get month;
  @override
  double? get quantity;
  @override
  ShieldConfig? get config;
  @override
  AddShieldStep get step;
  @override
  AddShieldSubmitStatus get submitStatus;

  /// Create a copy of AddShieldState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddShieldStateImplCopyWith<_$AddShieldStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
