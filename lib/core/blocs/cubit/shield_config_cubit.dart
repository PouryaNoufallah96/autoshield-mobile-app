import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shield_config_cubit.freezed.dart';
part 'shield_config_state.dart';

class ShieldConfigCubit extends Cubit<ShieldConfigState> {
  ShieldConfigCubit({
    required ShieldService shieldService,
  })  : _shieldService = shieldService,
        super(const ShieldConfigState(configs: []));

  final ShieldService _shieldService;

  Future<void> fetch() async {
    final data = await _shieldService.getShieldConfig();

    emit(ShieldConfigState(configs: data ?? []));
  }
}
