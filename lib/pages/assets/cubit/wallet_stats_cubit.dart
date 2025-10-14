import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_stats_cubit.freezed.dart';
part 'wallet_stats_state.dart';

class WalletStatsCubit extends Cubit<WalletStatsState> {
  WalletStatsCubit({
    required ShieldService shieldService,
  })  : _shieldService = shieldService,
        super(const WalletStatsState.initial());

  final ShieldService _shieldService;

  Future<void> fetch() async {
    emit(const WalletStatsState.inProgress());

    final data = await _shieldService.getWalletStats();

    if (data == null) {
      emit(const WalletStatsState.failure());
      return;
    }

    emit(WalletStatsState.success(stats: data));
  }
}
