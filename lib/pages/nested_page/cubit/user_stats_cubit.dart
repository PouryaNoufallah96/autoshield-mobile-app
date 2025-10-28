import 'package:auto_shield/core/services/stats_serivce/models.dart';
import 'package:auto_shield/core/services/stats_serivce/stats_serivce.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats_cubit.freezed.dart';
part 'user_stats_state.dart';

class UserStatsCubit extends Cubit<UserStatsState> {
  UserStatsCubit({
    required StatsService statsService,
  })  : _statsService = statsService,
        super(const UserStatsState.initial());

  final StatsService _statsService;

  Future<void> fetch() async {
    emit(const UserStatsState.inProgress());
    final stats = await _statsService.fetch();

    print(stats);
    if (stats != null) {
      emit(UserStatsState.success(stats: stats));

      return;
    }

    emit(const UserStatsState.failure());
  }
}
