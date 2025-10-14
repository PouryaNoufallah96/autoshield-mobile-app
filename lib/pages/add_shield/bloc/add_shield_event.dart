part of 'add_shield_bloc.dart';

@freezed
class AddShieldEvent with _$AddShieldEvent {
  const factory AddShieldEvent.changeMonth() = _ChangeMonth;
  const factory AddShieldEvent.changeQuantity() = _ChangeQuantity;
  const factory AddShieldEvent.changeConfig() = _ChangeConfig;
  const factory AddShieldEvent.submit() = _Submit;
}
