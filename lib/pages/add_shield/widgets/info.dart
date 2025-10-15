import 'package:auto_shield/core/blocs/prices/price_bloc.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:auto_shield/pages/add_shield/bloc/add_shield_bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShieldInfo extends StatelessWidget {
  const ShieldInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final token = context.read<WalletStats>();
    return BlocSelector<PriceBloc, PriceState, double>(
      selector: (state) {
        return state.prices
                .firstWhereOrNull((e) => e.tokenName == token.symbol)
                ?.price ??
            0;
      },
      builder: (context, price) {
        return BlocBuilder<AddShieldBloc, AddShieldState>(
          builder: (context, state) {
            if (state.step == AddShieldStep.quantity ||
                state.config == null ||
                state.quantity == null ||
                state.month == null) {
              return const SizedBox.shrink();
            }
            final month = state.month!.month;

            print(state.config);

            final value = state.quantity! * price;
            final amount = state.quantity!;

            final feePercent = state.config!.monthlyFees
                .firstWhere((e) =>
                    amount >= e.fromValue && amount <= e.destinationValue)
                .percentage;

            final fee = value * (feePercent / 100);

            final discount = state.config!.durationDiscount.firstWhereOrNull(
                (e) => month > e.fromMonth && month <= e.toMonth);

            final cashBack = state.config!.hashCashBack && discount != null
                ? value * (discount.discount / 100)
                : 0.0;

            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xffEEECF9),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsetsGeometry.all(16),
                    child: Column(
                      spacing: 16,
                      children: [
                        _Info(
                          title: 'Coverage value',
                          value: value,
                        ),
                        _Info(
                          title: 'Monthly Fee',
                          value: fee,
                        ),
                        _Info(
                          title: 'Cashback Bonus',
                          value: cashBack,
                          sign: state.config!.cashBackToken ?? '',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    required this.title,
    required this.value,
    this.sign = r'$',
  });

  final String title;
  final double value;
  final String sign;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: Assets.fonts.centraNo1Book,
            color: const Color(0xff71717A),
          ),
        ),
        Text(
          '${AppNumberFormatter.format(value, maxDecimal: 4)} $sign',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: Assets.fonts.centraNo1Medium,
            color: const Color(0xff121314),
          ),
        ),
      ],
    );
  }
}
