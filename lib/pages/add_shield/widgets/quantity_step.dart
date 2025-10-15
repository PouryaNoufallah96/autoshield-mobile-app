import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/core/utils/input_formatter.dart';
import 'package:auto_shield/core/utils/number_formatter.dart';
import 'package:auto_shield/core/utils/theme_utils.dart';
import 'package:auto_shield/pages/add_shield/bloc/add_shield_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QuantityStep extends HookWidget {
  const QuantityStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final available = context.read<WalletStats>().availableForCover;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quantity',
              style: TextStyle(
                fontFamily: 'CentraNo1-Medium',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff202321),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () {
                controller.text = '$available';
                context
                    .read<AddShieldBloc>()
                    .add(AddShieldEvent.changeQuantity(available));
              },
              child: Text(
                'Max: ${AppNumberFormatter.format(available)}',
                style: const TextStyle(
                  fontFamily: 'CentraNo1-Book',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff71717A),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextFormField(
          style: const TextStyle(
            fontFamily: 'CentraNo1-Book',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff202321),
          ),
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(
            decimal: true,
          ),
          inputFormatters: [
            SwapAmountFormatter(
              max: '$available',
              maxDecimals: 12,
            ),
          ],
          cursorHeight: 24,
          decoration: const InputDecoration(
            hintText: 'Quantity',
            hintStyle: TextStyle(
              fontFamily: 'CentraNo1-Book',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff71717A),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
          ),
          onChanged: (value) {
            final amount = double.tryParse(value);

            if (amount == null) {
              return;
            }
            context
                .read<AddShieldBloc>()
                .add(AddShieldEvent.changeQuantity(amount));
          },
        ),
        const SizedBox(height: 24),
        const _PayOfTime(),
      ],
    );
  }
}

class _PayOfTime extends StatelessWidget {
  const _PayOfTime();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Number of Month',
          style: TextStyle(
            fontFamily: 'CentraNo1-Medium',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff202321),
          ),
        ),
        const SizedBox(height: 8),
        BlocSelector<AddShieldBloc, AddShieldState, ShieldMonth?>(
          selector: (state) {
            return state.month;
          },
          builder: (context, payOfTime) {
            return OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                side: const BorderSide(
                  color: Color(0xffE3E3E3),
                ),
                foregroundColor: const Color(0xff71717A),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () async {
                final res = await showModalBottomSheet<ShieldMonth>(
                  context: context,
                  useRootNavigator: true,
                  isScrollControlled: true,
                  useSafeArea: true,
                  backgroundColor: Colors.white,
                  constraints: BoxConstraints(
                    maxHeight: context.mSize.height * .8,
                  ),
                  showDragHandle: true,
                  builder: (_) => _SelectPayOfTime(
                    payOfTime: payOfTime,
                  ),
                );

                if (res != null && context.mounted) {
                  context
                      .read<AddShieldBloc>()
                      .add(AddShieldEvent.changeMonth(res));
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    payOfTime?.text ?? 'select pay of time',
                    style: const TextStyle(
                      fontFamily: 'CentraNo1-Book',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff71717A),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 24,
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}

class _SelectPayOfTime extends StatelessWidget {
  const _SelectPayOfTime({
    required this.payOfTime,
  });

  final ShieldMonth? payOfTime;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            'Number of Month',
            style: TextStyle(
              fontFamily: 'CentraNo1-Bold',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          ...ShieldMonth.values.map(
            (e) {
              return Material(
                color: e == payOfTime
                    ? context.colorScheme.primary.withValues(alpha: .24)
                    : Colors.transparent,
                child: InkWell(
                  onTap: () => Navigator.pop(context, e),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: e == payOfTime
                                ? context.colorScheme.primary
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const SizedBox(
                            width: 4,
                            height: 56,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          child: Text.rich(
                            TextSpan(
                              text: '${e.month}',
                              style: const TextStyle(
                                fontFamily: 'CentraNo1-Medium',
                                fontSize: 20,
                                color: Color(0xff71717A),
                                fontWeight: FontWeight.w500,
                              ),
                              children: const [
                                TextSpan(
                                  text: '   month',
                                  style: TextStyle(
                                    fontFamily: 'CentraNo1-Book',
                                    fontSize: 16,
                                    color: Color(0xff71717A),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
