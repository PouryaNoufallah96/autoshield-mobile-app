import 'package:auto_shield/components/app_token.dart';
import 'package:auto_shield/components/dashed_divider.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssetItem extends StatelessWidget {
  const AssetItem({
    required this.stat,
    super.key,
  });

  final WalletStats stat;

  @override
  Widget build(BuildContext context) {
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
                  descTextStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: Assets.fonts.centraNo1Book,
                    fontSize: 12,
                  ),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: Assets.fonts.centraNo1Medium,
                    fontSize: 16,
                  ),
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    fixedSize: const WidgetStatePropertyAll(Size(72, 32)),
                    padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                    textStyle: WidgetStatePropertyAll(
                      TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Assets.fonts.centraNo1Medium,
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
                  onPressed: () =>
                      context.pushNamed('add_shield', extra: stat.toJson()),
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
                _Amount(
                  title: 'Covered:',
                  value: stat.covered,
                ),
                _Amount(
                  title: 'Uncovered:',
                  value: stat.availableForCover,
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
  });

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: Assets.fonts.centraNo1Book,
            fontSize: 12,
          ),
        ),
        Text(
          '${AppNumberFormatter.format(
            value,
            decimal: 2,
          )} \$',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: Assets.fonts.centraNo1Medium,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
