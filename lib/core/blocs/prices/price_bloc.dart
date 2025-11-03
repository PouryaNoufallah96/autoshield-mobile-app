import 'package:auto_shield/core/services/socket_service/socket_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_bloc.freezed.dart';
part 'price_bloc.g.dart';
part 'price_event.dart';
part 'price_state.dart';

class PriceBloc extends Bloc<PriceEvent, PriceState> {
  PriceBloc({
    required SocketService socketService,
  })  : _socketService = socketService,
        super(const _PriceState()) {
    on<_Started>(_onStarted);
  }

  final SocketService _socketService;

  Future<void> _onStarted(
    _Started event,
    Emitter<PriceState> emit,
  ) async {
    final stream = _socketService.stream
        .where((event) => event.name == 'NotifyPrice')
        .map((event) => event.data);

    await emit.forEach(
      stream,
      onData: (data) {
        final prices = (data as Map<String, dynamic>).entries.map(
          (e) {
            return TokenPrice(
              tokenName: e.key,
              price: ((e.value as Map<String, dynamic>)['price']
                      as Map<String, dynamic>)['price'] as double? ??
                  0,
            );
          },
        );

        return _PriceState(prices: prices.toList());
      },
    );
  }
}
