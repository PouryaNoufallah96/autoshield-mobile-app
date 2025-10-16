import 'package:auto_shield/pages/assets/cubit/wallet_stats_cubit.dart';
import 'package:auto_shield/pages/assets/widgets/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 23),
        Text(
          'Assets',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'CentraNo1-Medium',
            fontSize: 16,
          ),
        ),
        Expanded(
          child: _AssetsList(),
        ),
      ],
    );
  }
}

class _AssetsList extends StatelessWidget {
  const _AssetsList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletStatsCubit, WalletStatsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (stats) {
            final items = stats.where((e) => e.availableForCover > 0).toList();

            return RefreshIndicator.adaptive(
              onRefresh: () {
                return Future.wait([
                  context.read<WalletStatsCubit>().fetch(),
                ]);
              },
              child: ListView.separated(
                itemCount: items.length,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemBuilder: (context, index) {
                  final stat = items[index];

                  return AssetItem(
                    stat: stat,
                  );
                },
              ),
            );
          },
          orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
