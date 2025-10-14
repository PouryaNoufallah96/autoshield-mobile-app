import 'package:auto_shield/gen/assets.gen.dart';
import 'package:auto_shield/pages/history/widgets/active_items/active_items.dart';
import 'package:auto_shield/pages/history/widgets/expired_items/expired_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HistoryPage extends HookWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    return Column(
      children: [
        Text(
          'Shield',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: Assets.fonts.centraNo1Medium,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 22),
        TabBar(
          labelStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: Assets.fonts.centraNo1Bold,
            fontSize: 16,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: Assets.fonts.centraNo1Book,
            fontSize: 16,
            color: const Color(0xff71717A),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          tabs: const [
            Tab(
              text: 'Active',
            ),
            Tab(
              text: 'expired',
            )
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: const [
              ActiveItems(),
              ExpiredItems(),
            ],
          ),
        )
      ],
    );
  }
}
