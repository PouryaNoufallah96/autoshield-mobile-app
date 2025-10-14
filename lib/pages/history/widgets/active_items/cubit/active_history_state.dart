part of 'active_history_cubit.dart';

enum ActiveHistoryLoadingStatus { idle, inProgress, success, error }

class ActiveHistoryState with EquatableMixin {
  ActiveHistoryState({
    this.orders = const [],
    this.loadingStaus = ActiveHistoryLoadingStatus.idle,
    this.loadingMoreStatus = ActiveHistoryLoadingStatus.idle,
    this.page = 1,
    this.total = -1,
  });

  final List<ShieldHistory> orders;
  final ActiveHistoryLoadingStatus loadingStaus;
  final ActiveHistoryLoadingStatus loadingMoreStatus;
  final int page;
  final int total;

  @override
  List<Object?> get props => [orders, loadingStaus, loadingMoreStatus];

  ActiveHistoryState copyWith({
    List<ShieldHistory>? orders,
    ActiveHistoryLoadingStatus? loadingStaus,
    ActiveHistoryLoadingStatus? loadingMoreStatus,
    int? page,
    int? total,
  }) {
    return ActiveHistoryState(
      orders: orders ?? this.orders,
      loadingStaus: loadingStaus ?? this.loadingStaus,
      loadingMoreStatus: loadingMoreStatus ?? this.loadingMoreStatus,
      page: page ?? this.page,
      total: total ?? this.total,
    );
  }
}
// totalCount
