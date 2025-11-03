import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:auto_shield/core/services/transaction_service/transaction_service.dart';
import 'package:auto_shield/core/utils/future_timeout.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toastification/toastification.dart';

part 'add_shield_bloc.freezed.dart';
part 'add_shield_event.dart';
part 'add_shield_state.dart';

class AddShieldBloc extends Bloc<AddShieldEvent, AddShieldState> {
  AddShieldBloc({
    required ShieldService shieldService,
    required TransactionService transactionService,
    required this.tokenName,
  })  : _shieldService = shieldService,
        _transactionService = transactionService,
        super(const AddShieldState(month: ShieldMonth.one)) {
    on<_ChangeStep>(_onChangeStep);
    on<_ChangeMonth>(_onChangeMonth);
    on<_ChangeQuantity>(_onChangeQuantity);
    on<_ChangeConfig>(_onChangeConfig);
    on<_Submit>(_onSubmit);
  }

  final ShieldService _shieldService;
  final TransactionService _transactionService;
  final String tokenName;

  Future<void> _onChangeStep(
    _ChangeStep event,
    Emitter<AddShieldState> emit,
  ) async {
    emit(state.copyWith(step: event.step));
  }

  Future<void> _onChangeMonth(
    _ChangeMonth event,
    Emitter<AddShieldState> emit,
  ) async {
    emit(state.copyWith(month: event.month));
  }

  Future<void> _onChangeQuantity(
    _ChangeQuantity event,
    Emitter<AddShieldState> emit,
  ) async {
    emit(state.copyWith(quantity: event.quantity));
  }

  Future<void> _onChangeConfig(
    _ChangeConfig event,
    Emitter<AddShieldState> emit,
  ) async {
    emit(state.copyWith(config: event.config));
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<AddShieldState> emit,
  ) async {
    if (state.config == null || state.quantity == null || state.month == null) {
      return;
    }

    emit(state.copyWith(submitStatus: AddShieldSubmitStatus.inProgress));

    final response = await _shieldService.createShield(
      tokenName: tokenName,
      shieldType: state.config!.name,
      amount: state.quantity!,
      selectedMonth: state.month!.month,
    );

    if (response == null) {
      emit(state.copyWith(submitStatus: AddShieldSubmitStatus.failure));

      return;
    }

    final approved = await futureTimeout(
      _transactionService.approve(response.payoutAmount),
      const Duration(seconds: 30),
      () {
        emit(state.copyWith(submitStatus: AddShieldSubmitStatus.idle));

        toastification.show(
          style: ToastificationStyle.fillColored,
          type: ToastificationType.error,
          title: const Text('There was a problem connecting to your wallet.'),
          borderRadius: BorderRadius.circular(6),
          autoCloseDuration: const Duration(seconds: 4),
        );
      },
    );

    if (approved == null || !approved) {
      emit(state.copyWith(submitStatus: AddShieldSubmitStatus.idle));

      toastification.show(
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        title: const Text('The transaction was rejected.'),
        borderRadius: BorderRadius.circular(6),
        autoCloseDuration: const Duration(seconds: 4),
      );

      return;
    }

    final isPayed = await futureTimeout(
      _transactionService.payOrder(
          response.functionParams(), response.signature ?? ''),
      const Duration(seconds: 30),
      () {
        toastification.show(
          style: ToastificationStyle.fillColored,
          type: ToastificationType.error,
          title: const Text('There was a problem connecting to your wallet.'),
          borderRadius: BorderRadius.circular(6),
          autoCloseDuration: const Duration(seconds: 4),
        );
      },
    );

    if (isPayed != null) {
      emit(state.copyWith(submitStatus: AddShieldSubmitStatus.success));

      // if (isPayed) {
      //   toastification.show(
      //     style: ToastificationStyle.fillColored,
      //     type: ToastificationType.success,
      //     title: const Text('New insurance confirmed on-chain!'),
      //     borderRadius: BorderRadius.circular(6),
      //     autoCloseDuration: const Duration(seconds: 4),
      //   );
      // } else {
      //   toastification.show(
      //     style: ToastificationStyle.fillColored,
      //     type: ToastificationType.error,
      //     title: const Text('Transaction failed or reverted.'),
      //     borderRadius: BorderRadius.circular(6),
      //     autoCloseDuration: const Duration(seconds: 4),
      //   );
      // }
    }
  }
}
