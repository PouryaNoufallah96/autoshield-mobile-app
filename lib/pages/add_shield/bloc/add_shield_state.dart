part of 'add_shield_bloc.dart';

enum ShieldMonth {
  one(1, '1 month'),
  two(2, '2 month'),
  three(3, '3 month'),
  four(4, '4 month'),
  five(5, '5 month'),
  six(6, '6 month'),
  seven(7, '7 month'),
  eight(8, '8 month'),
  nine(9, '9 month'),
  ten(10, '10 month'),
  eleven(11, '11 month'),
  twelve(12, '12 month');

  const ShieldMonth(this.month, this.text);

  final int month;
  final String text;
}

enum AddShieldSubmitStatus { idle, inProgress, success, failure }

@freezed
class AddShieldState with _$AddShieldState {
  const factory AddShieldState({
    ShieldMonth? month,
    double? quantity,
    ShieldConfig? config,
    @Default(AddShieldSubmitStatus.idle) AddShieldSubmitStatus submitStatus,
  }) = _AddShieldState;
}
