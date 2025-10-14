part of 'expire_history_cubit.dart';


enum ExpireHistoryLoadingStatus { idle, inProgress, success, error }

class ExpireHistoryState with EquatableMixin {
  ExpireHistoryState({
    this.orders = const [],
    this.loadingStaus = ExpireHistoryLoadingStatus.idle,
    this.loadingMoreStatus = ExpireHistoryLoadingStatus.idle,
    this.page = 1,
    this.total = -1,
  });

  final List<ShieldHistory> orders;
  final ExpireHistoryLoadingStatus loadingStaus;
  final ExpireHistoryLoadingStatus loadingMoreStatus;
  final int page;
  final int total;

  @override
  List<Object?> get props => [orders, loadingStaus, loadingMoreStatus];

  ExpireHistoryState copyWith({
    List<ShieldHistory>? orders,
    ExpireHistoryLoadingStatus? loadingStaus,
    ExpireHistoryLoadingStatus? loadingMoreStatus,
    int? page,
    int? total,
  }) {
    return ExpireHistoryState(
      orders: orders ?? this.orders,
      loadingStaus: loadingStaus ?? this.loadingStaus,
      loadingMoreStatus: loadingMoreStatus ?? this.loadingMoreStatus,
      page: page ?? this.page,
      total: total ?? this.total,
    );
  }
}
// totalCount
