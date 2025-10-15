import 'package:auto_shield/components/app_scaffold.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/gen/assets.gen.dart';
import 'package:auto_shield/pages/add_shield/bloc/add_shield_bloc.dart';
import 'package:auto_shield/pages/add_shield/widgets/info.dart';
import 'package:auto_shield/pages/add_shield/widgets/plan_step.dart';
import 'package:auto_shield/pages/add_shield/widgets/quantity_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddShieldPage extends StatelessWidget {
  const AddShieldPage({
    required this.stat,
    super.key,
  });

  final WalletStats stat;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => stat,
      child: BlocProvider(
        create: (context) => AddShieldBloc(
          shieldService: context.read(),
          tokenName: stat.symbol,
        ),
        child: const _Page(),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppScaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              FontAwesomeIcons.arrowLeftLong,
              color: Color(0xff4024D1),
            ),
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                FontAwesomeIcons.arrowLeftLong,
                color: Colors.transparent,
              ),
            )
          ],
          centerTitle: true,
          title: const _Stepper(),
        ),
        body: const _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            children: [
              BlocSelector<AddShieldBloc, AddShieldState, String>(
                selector: (state) {
                  return state.step.title;
                },
                builder: (context, state) {
                  return Text(
                    state,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: Assets.fonts.centraNo1Book,
                      color: const Color(0xff202321),
                    ),
                  );
                },
              ),
              BlocSelector<AddShieldBloc, AddShieldState, AddShieldStep>(
                selector: (state) {
                  return state.step;
                },
                builder: (context, state) {
                  return Column(
                    children: [
                      if (state != AddShieldStep.confirm)
                        const SizedBox(height: 40),
                      switch (state) {
                        AddShieldStep.quantity => const QuantityStep(),
                        AddShieldStep.config => const PlanStep(),
                        AddShieldStep.confirm => const SizedBox(),
                      },
                    ],
                  );
                },
              ),
            ],
          ),
        ),
        const ShieldInfo(),
        const _Button()
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddShieldBloc, AddShieldState, bool>(
      selector: (state) {
        if (state.step == AddShieldStep.quantity) {
          return state.quantity != null &&
              state.quantity! > 0 &&
              state.month != null;
        } else if (state.step == AddShieldStep.config) {
          return state.config != null;
        }
        return false;
      },
      builder: (context, isValidated) {
        return BlocBuilder<AddShieldBloc, AddShieldState>(
          builder: (context, state) {
            final step = state.step;
            final status = state.submitStatus;

            final text = switch (step) {
              AddShieldStep.confirm => 'Confirm',
              _ => 'Next',
            };

            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                  minimumSize: const Size.fromHeight(48),
                ),
                onPressed: !isValidated
                    ? null
                    : () {
                        if (step == AddShieldStep.quantity) {
                          context.read<AddShieldBloc>().add(
                              const AddShieldEvent.changeStep(
                                  AddShieldStep.config));

                          return;
                        }

                        if (step == AddShieldStep.config) {
                          context.read<AddShieldBloc>().add(
                              const AddShieldEvent.changeStep(
                                  AddShieldStep.confirm));
                          return;
                        }
                      },
                child: status == AddShieldSubmitStatus.inProgress
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: Assets.fonts.centraNo1Book,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
              ),
            );
          },
        );
      },
    );
  }
}

class _Stepper extends StatelessWidget {
  const _Stepper();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddShieldBloc, AddShieldState, int>(
      selector: (state) {
        return state.step.index;
      },
      builder: (context, index) {
        return Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Step(isActive: index >= 0),
            _Step(isActive: index >= 1),
            _Step(isActive: index >= 2),
          ],
        );
      },
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4,
      width: 42,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isActive ? const Color(0xff4024D1) : const Color(0xffE2DAFF),
        ),
      ),
    );
  }
}
