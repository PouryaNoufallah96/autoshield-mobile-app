import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'active_history_state.dart';

class ActiveHistoryCubit extends Cubit<ActiveHistoryState> {
  ActiveHistoryCubit({
    required ShieldService shieldService,
  })  : _shieldService = shieldService,
        super(ActiveHistoryState());

  final ShieldService _shieldService;

  Future<void> getHistory() async {
    emit(
      state.copyWith(
        loadingStaus: ActiveHistoryLoadingStatus.inProgress,
        page: 1,
        orders: [],
      ),
    );

    final data = await _shieldService.getActiveShields(state.page);

    emit(
      state.copyWith(
        loadingStaus: ActiveHistoryLoadingStatus.success,
        orders: data.$1,
        total: data.$2,
      ),
    );
  }

  Future<void> nextPage() async {
    if (state.loadingMoreStatus == ActiveHistoryLoadingStatus.inProgress ||
        state.loadingStaus != ActiveHistoryLoadingStatus.success ||
        state.orders.length == state.total) {
      return;
    }

    final newPage = state.page + 1;

    emit(state.copyWith(
      page: newPage,
      loadingMoreStatus: ActiveHistoryLoadingStatus.inProgress,
    ));

    final data = await _shieldService.getActiveShields(newPage);

    emit(
      state.copyWith(
        loadingMoreStatus: ActiveHistoryLoadingStatus.success,
        orders: [
          ...state.orders,
          ...data.$1,
        ],
        total: data.$2,
      ),
    );
  }
}
