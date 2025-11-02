import 'package:auto_shield/components/app_scaffold.dart';
import 'package:auto_shield/core/services/socket_service/socket_service.dart';
import 'package:auto_shield/pages/nested_page/cubit/user_stats_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NestedPage extends StatefulWidget {
  const NestedPage({
    required this.child,
    super.key,
  });

  final StatefulNavigationShell child;

  @override
  State<NestedPage> createState() => _NestedPageState();
}

class _NestedPageState extends State<NestedPage> {
  @override
  void dispose() {
    context.read<SocketService>().disconnectShield();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      hide: widget.child.currentIndex == 2,
      body: BlocSelector<UserStatsCubit, UserStatsState, bool>(
        selector: (state) {
          return state.maybeWhen(
            success: (_) => false,
            orElse: () => true,
          );
        },
        builder: (context, isInProgress) {
          if (isInProgress) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          return SafeArea(
            child: widget.child,
          );
        },
      ),
      bottomNavigationBar: _BottomNav(
        shell: widget.child,
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({
    required this.shell,
  });

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff4024d1).withValues(alpha: .16),
            blurRadius: 16,
            spreadRadius: -4,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        spacing: 32,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _NavItem(
            text: 'Guard',
            src: 'assets/icons/clock.svg',
            withBackground: false,
            onTap: shell.goBranch,
            index: 0,
            groupIndex: shell.currentIndex,
          ),
          _NavItem(
            text: null,
            src: 'assets/icons/add_plus.svg',
            withBackground: true,
            onTap: shell.goBranch,
            index: 1,
            groupIndex: shell.currentIndex,
          ),
          _NavItem(
            text: 'Setting',
            src: 'assets/icons/settings.svg',
            withBackground: false,
            onTap: shell.goBranch,
            index: 2,
            groupIndex: shell.currentIndex,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.text,
    required this.src,
    required this.withBackground,
    required this.onTap,
    required this.index,
    required this.groupIndex,
  });

  final String src;
  final String? text;
  final bool withBackground;
  final int index;
  final void Function(int index) onTap;
  final int groupIndex;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () => onTap(index),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (text == null)
                const CircleAvatar(
                  radius: 24,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                )
              else
                SvgPicture.asset(
                  src,
                  height: 24,
                  width: 24,
                  colorFilter: index == groupIndex && !withBackground
                      ? const ColorFilter.mode(
                          Color(0xffB6A2FF), BlendMode.srcIn)
                      : null,
                ),
              if (text != null)
                Text(
                  text!,
                  style: const TextStyle(
                    fontFamily: 'CentraNo1-Medium',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff71717A),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
