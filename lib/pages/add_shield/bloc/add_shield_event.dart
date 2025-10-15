part of 'add_shield_bloc.dart';

@freezed
class AddShieldEvent with _$AddShieldEvent {
  const factory AddShieldEvent.changeStep(AddShieldStep step) = _ChangeStep;
  const factory AddShieldEvent.changeMonth(ShieldMonth month) = _ChangeMonth;
  const factory AddShieldEvent.changeQuantity(double quantity) =
      _ChangeQuantity;
  const factory AddShieldEvent.changeConfig(ShieldConfig config) =
      _ChangeConfig;
  const factory AddShieldEvent.submit() = _Submit;
}
