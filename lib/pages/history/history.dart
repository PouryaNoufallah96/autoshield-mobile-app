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
        const SizedBox(height: 23),
        const Text(
          'Shield',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'CentraNo1-Medium',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 22),
        TabBar(
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'CentraNo1-Bold',
            fontSize: 16,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'CentraNo1-Book',
            fontSize: 16,
            color: Color(0xff71717A),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabController,
          tabs: const [
            Tab(
              text: 'Active',
            ),
            Tab(
              text: 'Inactive',
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
