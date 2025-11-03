import 'package:auto_shield/components/app_token.dart';
import 'package:auto_shield/components/dashed_divider.dart';
import 'package:auto_shield/core/blocs/cubit/shield_config_cubit.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/pages/add_shield/add_shield.dart';
import 'package:auto_shield/pages/assets/cubit/wallet_stats_cubit.dart';
import 'package:auto_shield/pages/nested_page/cubit/user_stats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetItem extends StatelessWidget {
  const AssetItem({
    required this.stat,
    super.key,
  });

  final WalletStats stat;

  @override
  Widget build(BuildContext context) {
    final availableForCover =
        double.tryParse(stat.availableForCoverValue.toStringAsFixed(2)) ?? 0;

    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 4,
      shadowColor: const Color(0xff4024D1).withValues(alpha: .2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppToken(
                  src: 'assets/images/${stat.symbol.toLowerCase()}.png',
                  name: stat.symbol,
                  desc: stat.tokenName,
                  size: 44,
                  descTextStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'CentraNo1-Book',
                    fontSize: 12,
                  ),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CentraNo1-Medium',
                    fontSize: 16,
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    fixedSize: const WidgetStatePropertyAll(Size(72, 32)),
                    padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                    textStyle: const WidgetStatePropertyAll(
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'CentraNo1-Medium',
                        fontSize: 16,
                      ),
                    ),
                    side: const WidgetStatePropertyAll(BorderSide(
                      color: Color(0xffE3E3E3),
                    )),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xffE3E3E3),
                      ),
                      borderRadius: BorderRadiusGeometry.circular(12),
                    )),
                  ),
                  onPressed: availableForCover == 0
                      ? null
                      : () async {
                          final shieldConfig =
                              context.read<ShieldConfigCubit>();
                          final walletStats = context.read<WalletStatsCubit>();
                          final userStats = context.read<UserStatsCubit>();

                          final isSucceed = await showDialog<bool>(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) {
                              return Dialog.fullscreen(
                                  child: MultiBlocProvider(
                                providers: [
                                  BlocProvider.value(value: shieldConfig),
                                  BlocProvider.value(value: walletStats),
                                  BlocProvider.value(value: userStats),
                                ],
                                child: AddShieldPage(stat: stat),
                              ));
                            },
                          );

                          if ((isSucceed ?? false) && context.mounted) {
                            await context.read<WalletStatsCubit>().fetch();
                          }
                        },
                  child: const Text('Add'),
                )
              ],
            ),
          ),
          const DashedDivider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Amount(
                      title: 'Covered:',
                      value: stat.covered,
                      sign: '',
                    ),
                    _Amount(
                      title: '',
                      value: stat.coveredValue,
                      sign: r'$',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _Amount(
                      title: 'Uncovered:',
                      value: stat.availableForCover,
                      sign: '',
                    ),
                    _Amount(
                      title: '',
                      value: stat.availableForCoverValue,
                      sign: r'$',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Amount extends StatelessWidget {
  const _Amount({
    required this.title,
    required this.value,
    required this.sign,
  });

  final String title;
  final double value;
  final String sign;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'CentraNo1-Book',
              fontSize: 12,
            ),
          ),
        Text(
          '${AppNumberFormatter.format(
            value,
            maxDecimal: 6,
          )} $sign',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'CentraNo1-Medium',
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
