import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/pages/history/widgets/active_items/cubit/active_history_cubit.dart';
import 'package:auto_shield/pages/history/widgets/history_item/history_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ActiveItems extends StatelessWidget {
  const ActiveItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveHistoryCubit, ActiveHistoryState>(
      builder: (context, state) {
        return switch (state.loadingStaus) {
          ActiveHistoryLoadingStatus.idle => const SizedBox.shrink(),
          ActiveHistoryLoadingStatus.inProgress => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ActiveHistoryLoadingStatus.success => _Body(orders: state.orders),
          _ => const _Body(orders: []),
        };
      },
    );
  }
}

class _Body extends HookWidget {
  const _Body({
    required this.orders,
  });

  final List<ShieldHistory> orders;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        bool isBottom() {
          if (!scrollController.hasClients) return false;
          final maxScroll = scrollController.position.maxScrollExtent;
          final currentScroll = scrollController.offset;
          return currentScroll >= (maxScroll * 0.9);
        }

        if (isBottom()) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<ActiveHistoryCubit>().nextPage();
          });
        }
      }

      scrollController.addListener(onScroll);

      return () => scrollController.removeListener(onScroll);
    }, []);

    return RefreshIndicator(
      onRefresh: () => context.read<ActiveHistoryCubit>().getHistory(),
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        slivers: <Widget>[
          if (orders.isEmpty)
            const SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 12,
                children: [
                  Icon(
                    Icons.hourglass_empty_rounded,
                    size: 28,
                    color: Colors.black,
                  ),
                  Text('No data'),
                ],
              ),
            )
          else ...[
            SliverList.separated(
              separatorBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: SizedBox(height: 16),
                );
              },
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];

                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: HistoryItem.expire(
                    item: order,
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: BlocSelector<ActiveHistoryCubit, ActiveHistoryState, bool>(
                selector: (state) {
                  return state.loadingMoreStatus ==
                      ActiveHistoryLoadingStatus.inProgress;
                },
                builder: (context, state) {
                  if (!state) {
                    return const SizedBox.shrink();
                  }

                  return const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ],
      ),
    );
  }
}
