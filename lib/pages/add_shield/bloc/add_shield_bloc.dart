import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_shield_bloc.freezed.dart';
part 'add_shield_event.dart';
part 'add_shield_state.dart';

class AddShieldBloc extends Bloc<AddShieldEvent, AddShieldState> {
  AddShieldBloc({
    required ShieldService shieldService,
  })  : _shieldService = shieldService,
        super(const AddShieldState()) {
    on<_ChangeMonth>(_onChangeMonth);
    on<_ChangeQuantity>(_onChangeQuantity);
    on<_ChangeConfig>(_onChangeConfig);
    on<_Submit>(_onSubmit);
  }

  final ShieldService _shieldService;

  Future<void> _onChangeMonth(
    _ChangeMonth event,
    Emitter<AddShieldState> emit,
  ) async {}

  Future<void> _onChangeQuantity(
    _ChangeQuantity event,
    Emitter<AddShieldState> emit,
  ) async {}

  Future<void> _onChangeConfig(
    _ChangeConfig event,
    Emitter<AddShieldState> emit,
  ) async {}

  Future<void> _onSubmit(
    _Submit event,
    Emitter<AddShieldState> emit,
  ) async {}
}
