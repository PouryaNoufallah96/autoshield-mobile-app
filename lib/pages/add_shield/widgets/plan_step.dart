import 'package:auto_shield/components/dashed_button.dart';
import 'package:auto_shield/core/blocs/cubit/shield_config_cubit.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/pages/add_shield/bloc/add_shield_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlanStep extends HookWidget {
  const PlanStep({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddShieldBloc, AddShieldState, double>(
      selector: (state) {
        return state.quantity ?? 0;
      },
      builder: (context, quantity) {
        return BlocSelector<ShieldConfigCubit, ShieldConfigState,
            List<ShieldConfig>>(
          selector: (state) {
            return state.configs;
          },
          builder: (context, configs) {
            return Column(
              spacing: 16,
              children: [
                ...configs.map(
                  (e) {
                    return _Config(amount: quantity, config: e);
                  },
                )
              ],
            );
          },
        );
      },
    );
  }
}

class _Config extends StatelessWidget {
  const _Config({
    required this.amount,
    required this.config,
  });

  final ShieldConfig config;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddShieldBloc, AddShieldState, ShieldConfig?>(
      selector: (state) {
        return state.config;
      },
      builder: (context, selectedConfig) {
        final fee = config.monthlyFees
            .firstWhere(
                (e) => amount >= e.fromValue && amount <= e.destinationValue)
            .percentage;

        final feeFormated = AppNumberFormatter.format(fee);

        return CustomPaint(
          painter: DashedBorderPainter(
            color: Theme.of(context).colorScheme.primary,
            strokeWidth: 2,
            radius: 12,
            dashArray: [2, 4],
          ),
          child: InkWell(
            onTap: () {
              context
                  .read<AddShieldBloc>()
                  .add(AddShieldEvent.changeConfig(config));
            },
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Radio(
                    value: config,
                    groupValue: selectedConfig,
                    onChanged: (_) {
                      context
                          .read<AddShieldBloc>()
                          .add(AddShieldEvent.changeConfig(config));
                    },
                  ),
                  Text(
                    config.name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff202321),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'CentraNo1-Medium',
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Monthly Fee: ',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff202321),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'CentraNo1-Book'),
                  ),
                  Text(
                    '$feeFormated %',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xff202321),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'CentraNo1-Medium',
                    ),
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
