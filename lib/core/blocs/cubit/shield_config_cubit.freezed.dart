// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shield_config_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShieldConfigState {
  List<ShieldConfig> get configs => throw _privateConstructorUsedError;

  /// Create a copy of ShieldConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShieldConfigStateCopyWith<ShieldConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShieldConfigStateCopyWith<$Res> {
  factory $ShieldConfigStateCopyWith(
          ShieldConfigState value, $Res Function(ShieldConfigState) then) =
      _$ShieldConfigStateCopyWithImpl<$Res, ShieldConfigState>;
  @useResult
  $Res call({List<ShieldConfig> configs});
}

/// @nodoc
class _$ShieldConfigStateCopyWithImpl<$Res, $Val extends ShieldConfigState>
    implements $ShieldConfigStateCopyWith<$Res> {
  _$ShieldConfigStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShieldConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_value.copyWith(
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<ShieldConfig>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShieldConfigStateImplCopyWith<$Res>
    implements $ShieldConfigStateCopyWith<$Res> {
  factory _$$ShieldConfigStateImplCopyWith(_$ShieldConfigStateImpl value,
          $Res Function(_$ShieldConfigStateImpl) then) =
      __$$ShieldConfigStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShieldConfig> configs});
}

/// @nodoc
class __$$ShieldConfigStateImplCopyWithImpl<$Res>
    extends _$ShieldConfigStateCopyWithImpl<$Res, _$ShieldConfigStateImpl>
    implements _$$ShieldConfigStateImplCopyWith<$Res> {
  __$$ShieldConfigStateImplCopyWithImpl(_$ShieldConfigStateImpl _value,
      $Res Function(_$ShieldConfigStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShieldConfigState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_$ShieldConfigStateImpl(
      configs: null == configs
          ? _value._configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<ShieldConfig>,
    ));
  }
}

/// @nodoc

class _$ShieldConfigStateImpl implements _ShieldConfigState {
  const _$ShieldConfigStateImpl({required final List<ShieldConfig> configs})
      : _configs = configs;

  final List<ShieldConfig> _configs;
  @override
  List<ShieldConfig> get configs {
    if (_configs is EqualUnmodifiableListView) return _configs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configs);
  }

  @override
  String toString() {
    return 'ShieldConfigState(configs: $configs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShieldConfigStateImpl &&
            const DeepCollectionEquality().equals(other._configs, _configs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_configs));

  /// Create a copy of ShieldConfigState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShieldConfigStateImplCopyWith<_$ShieldConfigStateImpl> get copyWith =>
      __$$ShieldConfigStateImplCopyWithImpl<_$ShieldConfigStateImpl>(
          this, _$identity);
}

abstract class _ShieldConfigState implements ShieldConfigState {
  const factory _ShieldConfigState(
      {required final List<ShieldConfig> configs}) = _$ShieldConfigStateImpl;

  @override
  List<ShieldConfig> get configs;

  /// Create a copy of ShieldConfigState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShieldConfigStateImplCopyWith<_$ShieldConfigStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
