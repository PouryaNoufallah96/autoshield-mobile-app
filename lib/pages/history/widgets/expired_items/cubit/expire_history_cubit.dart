import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expire_history_state.dart';

class ExpireHistoryCubit extends Cubit<ExpireHistoryState> {
  ExpireHistoryCubit({
    required ShieldService shieldService,
  })  : _shieldService = shieldService,
        super(ExpireHistoryState());

  final ShieldService _shieldService;

  Future<void> getHistory() async {
    emit(
      state.copyWith(
        loadingStaus: ExpireHistoryLoadingStatus.inProgress,
        page: 1,
        orders: [],
      ),
    );

    final data = await _shieldService.getExpireShields(state.page);

    emit(
      state.copyWith(
        loadingStaus: ExpireHistoryLoadingStatus.success,
        orders: data.$1,
        total: data.$2,
      ),
    );
  }

  Future<void> nextPage() async {
    if (state.loadingMoreStatus == ExpireHistoryLoadingStatus.inProgress ||
        state.loadingStaus != ExpireHistoryLoadingStatus.success ||
        state.orders.length == state.total) {
      return;
    }

    final newPage = state.page + 1;

    emit(state.copyWith(
      page: newPage,
      loadingMoreStatus: ExpireHistoryLoadingStatus.inProgress,
    ));

    final data = await _shieldService.getExpireShields(newPage);

    emit(
      state.copyWith(
        loadingMoreStatus: ExpireHistoryLoadingStatus.success,
        orders: [
          ...state.orders,
          ...data.$1,
        ],
        total: data.$2,
      ),
    );
  }
}
