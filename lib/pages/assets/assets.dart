import 'package:auto_shield/gen/assets.gen.dart';
import 'package:auto_shield/pages/assets/cubit/wallet_stats_cubit.dart';
import 'package:auto_shield/pages/assets/widgets/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Assets',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: Assets.fonts.centraNo1Medium,
            fontSize: 16,
          ),
        ),
        const Expanded(
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
            return RefreshIndicator.adaptive(
              onRefresh: () {
                return Future.wait([
                  context.read<WalletStatsCubit>().fetch(),
                ]);
              },
              child: ListView.separated(
                itemCount: stats.length,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemBuilder: (context, index) {
                  final stat = stats[index];

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
