import 'package:auto_shield/components/app_token.dart';
import 'package:auto_shield/components/dashed_divider.dart';
import 'package:auto_shield/core/blocs/prices/price_bloc.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem.active({
    required this.item,
    super.key,
  }) : title = 'Contract Expiration Date';

  const HistoryItem.expire({
    required this.item,
    super.key,
  }) : title = 'Contract Expired Date';

  final String title;
  final ShieldHistory item;

  @override
  Widget build(BuildContext context) {
    final rawDate = DateTime.tryParse(item.expireMoment);
    final date = rawDate != null
        ? DateFormat('yyyy/MM/dd').format(rawDate)
        : item.expireMoment;

    return BlocSelector<PriceBloc, PriceState, double>(
      selector: (state) {
        return state.prices
                .firstWhereOrNull((e) => e.tokenName == item.symbol)
                ?.price ??
            0;
      },
      builder: (context, price) {
        final value = item.tokenAmount * price;

        return Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 4,
          shadowColor: const Color(0xff4024D1).withValues(alpha: .2),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              showModalBottomSheet<void>(
                showDragHandle: true,
                isScrollControlled: true,
                useRootNavigator: true,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return _Details(item: item);
                },
              );
            },
            child: Padding(
              padding: const EdgeInsetsGeometry.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'CentraNo1-Book',
                          color: Color(0xff7F7F7F),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: DashedDivider(),
                        ),
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'CentraNo1-Book',
                          color: Color(0xff202321),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Assets.icons.arrowRight.svg(
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppToken(
                        size: 44,
                        src: 'assets/images/${item.symbol?.toLowerCase()}.png',
                        name: item.symbol ?? item.tokenName ?? '',
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'CentraNo1-Medium',
                          color: Color(0xff202321),
                        ),
                        desc: item.tokenName,
                        descTextStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'CentraNo1-Book',
                          color: Color(0xff7F7F7F),
                        ),
                      ),
                      Text(
                        '${AppNumberFormatter.format(value, decimal: 6)} \$',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'CentraNo1-Medium',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    required this.item,
  });
  final ShieldHistory item;

  @override
  Widget build(BuildContext context) {
    final token = () {
      if (item.symbol == null || item.symbol!.isEmpty) {
        return 'mgc';
      }
      return item.symbol!.toLowerCase();
    }();

    final expireMomentRawDate = DateTime.tryParse(item.expireMoment);
    final expireMoment = expireMomentRawDate != null
        ? DateFormat('yyyy/MM/dd').format(expireMomentRawDate)
        : item.expireMoment;

    final registerMomentRawDate = DateTime.tryParse(item.registerMoment ?? '');
    final registerMoment = registerMomentRawDate != null
        ? DateFormat('yyyy/MM/dd').format(registerMomentRawDate)
        : item.registerMoment ?? '--';

    return BlocSelector<PriceBloc, PriceState, double>(
      selector: (state) {
        return state.prices
                .firstWhereOrNull((e) => e.tokenName == item.symbol)
                ?.price ??
            0;
      },
      builder: (context, price) {
        final value = item.tokenAmount * price;
        final tokenValue = item.tokenValue;

        final changePercent = ((value - tokenValue) / tokenValue) * 100;

        final percentColor = switch (changePercent) {
          0 => const Color(0xffC5C5C5),
          > 0 => const Color(0xff22C55E),
          _ => const Color(0xffF01616),
        };

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              spacing: 10,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 44),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 44, 16, 16),
                            child: Column(
                              spacing: 2,
                              children: [
                                Text(
                                  item.symbol ?? '',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'CentraNo1-Medium',
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  item.tokenName ?? '',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'CentraNo1-Book',
                                    color: Color(0xff71717A),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: percentColor.withValues(alpha: .16),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: percentColor,
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsGeometry.symmetric(
                                              horizontal: 16, vertical: 14),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${AppNumberFormatter.format(value, maxDecimal: 6)} \$',
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'CentraNo1-Medium',
                                              color: Color(0xff202321),
                                            ),
                                          ),
                                          Text(
                                            '${AppNumberFormatter.format(changePercent, maxDecimal: 2)} %',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'CentraNo1-Medium',
                                              color: percentColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                            'assets/images/$token.png',
                            height: 64,
                            width: 64,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 24,
                      children: [
                        _Row(
                          title: 'Contract Start Date',
                          value: registerMoment,
                        ),
                        _Row(
                          title: 'Contract Expiration Date',
                          value: expireMoment,
                        ),
                        _Row(
                          title: 'Coverage Quantity',
                          value: AppNumberFormatter.format(
                            item.tokenAmount,
                            maxDecimal: 7,
                          ),
                        ),
                        _Row(
                          title: 'Coverage Value',
                          value:
                              '${AppNumberFormatter.format(item.tokenValue, maxDecimal: 6)} \$',
                        ),
                        _Row(
                          title: 'Number of Month',
                          value: '${item.selectedMonth}',
                        ),
                        _Row(
                          title: 'Auto Shield Plan',
                          value: item.type.key,
                        ),
                        _Row(
                          title: 'Monthly Fee',
                          value: '${AppNumberFormatter.format(
                            item.monthlyFee,
                            maxDecimal: 2,
                          )} %',
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color(0xffF0EDFB),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xff4024D1)),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsGeometry.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Loyalty Return',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'CentraNo1-Book',
                                    color: Color(0xff202321),
                                  ),
                                ),
                                Text(
                                  '${AppNumberFormatter.format(item.settlementAmount, maxDecimal: 6)} ${item.settlementToken}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'CentraNo1-Medium',
                                    color: Color(0xff202321),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
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
            color: Color(0xff71717A),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'CentraNo1-Medium',
            color: Color(0xff202321),
          ),
        ),
      ],
    );
  }
}
