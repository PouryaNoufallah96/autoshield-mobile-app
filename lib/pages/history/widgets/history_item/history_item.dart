import 'package:auto_shield/components/app_token.dart';
import 'package:auto_shield/components/dashed_divider.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:flutter/material.dart';

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
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 4,
      shadowColor: const Color(0xff4024D1).withValues(alpha: .2),
      child: Padding(
        padding: const EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: Assets.fonts.centraNo1Book,
                    color: const Color(0xff7F7F7F),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: DashedDivider(),
                  ),
                ),
                Text(
                  '2026/04/01',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: Assets.fonts.centraNo1Book,
                    color: const Color(0xff202321),
                  ),
                ),
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
                  src: 'assets/images/mgc.png',
                  name: 'MGC',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: Assets.fonts.centraNo1Medium,
                    color: const Color(0xff202321),
                  ),
                  desc: 'Meta game coin',
                  descTextStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: Assets.fonts.centraNo1Book,
                    color: const Color(0xff7F7F7F),
                  ),
                ),
                Text(
                  '${AppNumberFormatter.format(0, decimal: 2)} \$',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: Assets.fonts.centraNo1Medium,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
