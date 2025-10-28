import 'package:auto_shield/core/blocs/prices/price_bloc.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/pages/add_shield/bloc/add_shield_bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmShieldInfo extends StatelessWidget {
  const ConfirmShieldInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final stat = context.read<WalletStats>();
    return Column(
      children: [
        const SizedBox(height: 16),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 44),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 44, 16, 16),
                    child: _Info(),
                  ),
                ),
              ),
            ),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: const Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/images/${stat.symbol.toLowerCase()}.png',
                    height: 64,
                    width: 64,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _Info extends StatelessWidget {
  const _Info();

  @override
  Widget build(BuildContext context) {
    final stat = context.read<WalletStats>();

    return BlocSelector<PriceBloc, PriceState, double>(
      selector: (state) {
        return state.prices
                .firstWhereOrNull((e) => e.tokenName == stat.symbol)
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

            final value = state.quantity! * price;

            return Column(
              spacing: 24,
              children: [
                _Row(
                  title: 'Coverage Quantity',
                  value:
                      '${AppNumberFormatter.format(state.quantity!, maxDecimal: 6)} ${stat.symbol}',
                ),
                _Row(
                  title: 'Coverage value',
                  value:
                      '${AppNumberFormatter.format(value, maxDecimal: 6)} \$',
                ),
                _Row(
                  title: 'Number of Month',
                  value: '$month',
                ),
                _Row(
                  title: 'Auto shield Plans',
                  value: state.config!.name,
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'CentraNo1-Book',
              color: Color(0xff202321)),
        ),
        Text(
          value,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'CentraNo1-Medium',
              color: Color(0xff202321)),
        )
      ],
    );
  }
}
