part of 'wallet_stats_cubit.dart';

@freezed
class WalletStatsState with _$WalletStatsState {
  const factory WalletStatsState.initial() = _Initial;
  const factory WalletStatsState.inProgress() = _InProgress;
  const factory WalletStatsState.success({
    required List<WalletStats> stats,
  }) = _Success;
  const factory WalletStatsState.failure() = _Failure;
}
