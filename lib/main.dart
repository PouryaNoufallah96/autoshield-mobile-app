import 'dart:async';

import 'package:auto_shield/core/blocs/cubit/shield_config_cubit.dart';
import 'package:auto_shield/core/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:auto_shield/core/blocs/reown/reown_bloc.dart';
import 'package:auto_shield/core/design_system/theme.dart';
import 'package:auto_shield/core/services/auth_interceptor/auth_interceptor.dart';
import 'package:auto_shield/core/services/reown/reown.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:auto_shield/injection.dart';
import 'package:auto_shield/pages/add_shield/add_shield.dart';
import 'package:auto_shield/pages/assets/assets.dart';
import 'package:auto_shield/pages/assets/cubit/wallet_stats_cubit.dart';
import 'package:auto_shield/pages/auth/auth.dart';
import 'package:auto_shield/pages/history/history.dart';
import 'package:auto_shield/pages/history/widgets/active_items/cubit/active_history_cubit.dart';
import 'package:auto_shield/pages/history/widgets/expired_items/cubit/expire_history_cubit.dart';
import 'package:auto_shield/pages/nested_page/nested_page.dart';
import 'package:auto_shield/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reown_appkit/modal/theme/public/appkit_modal_theme_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toastification/toastification.dart';

part 'router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final path = (await getTemporaryDirectory()).path;

  Hive.init(path);

  final storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(path),
  );

  HydratedBloc.storage = storage;

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(appInjection(const AutoShieldApp()));
}

class AutoShieldApp extends StatefulHookWidget {
  const AutoShieldApp({super.key});

  @override
  State<AutoShieldApp> createState() => AutoShieldAppState();
}

class AutoShieldAppState extends State<AutoShieldApp> with AutoShieldAppRouter {
  @override
  Widget build(BuildContext context) {
    final appRouter = useMemoized(() => router);

    return BlocSelector<PreferencesBloc, PreferencesState, bool>(
      selector: (state) => state.isDark,
      builder: (context, isDark) {
        return ReownAppKitModalTheme(
          isDarkMode: isDark,
          child: ToastificationWrapper(
            config: const ToastificationConfig(
              maxToastLimit: 1,
              maxTitleLines: 4,
            ),
            child: MaterialApp.router(
              routerConfig: appRouter,
              title: 'RZ Prime',
              theme: AutoShieldTheme()(isDark),
              builder: (context, child) {
                return RepositoryProvider(
                  create: (context) =>
                      ReownService()..call(routerKey.currentContext!),
                  child: Builder(builder: (context) {
                    return BlocProvider(
                      create: (context) => ReownBloc(
                        authInterceptor: context.read(),
                        authService: context.read(),
                        reownService: context.read(),
                      )..add(ReownStarted()),
                      child: child,
                    );
                  }),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
