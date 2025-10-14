part of 'shield_config_cubit.dart';

@freezed
class ShieldConfigState with _$ShieldConfigState {
  const factory ShieldConfigState({
    required List<ShieldConfig> configs,
  }) = _ShieldConfigState;
}
