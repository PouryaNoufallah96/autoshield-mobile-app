part of '../main.dart';

final GlobalKey<NavigatorState> routerKey = GlobalKey();
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>();

mixin AutoShieldAppRouter on State<AutoShieldApp> {
  GoRouter get router {
    return GoRouter(
      initialLocation: '/assets',
      navigatorKey: routerKey,
      refreshListenable: _RouterRefreshStream(
        authStream: context.read<AuthInterceptor>().stream,
        preferencesStream: context.read<PreferencesBloc>().stream,
      ),
      redirect: (context, state) async {
        // final path = state.uri.path;

        // final isOnBoardingPassed =
        //     context.read<PreferencesBloc>().state.isOnBoardingPass;
        // final isTermsAccepted =
        //     context.read<PreferencesBloc>().state.isTermsAccepted;

        // if (!isOnBoardingPassed) {
        //   return '/on_boarding';
        // }

        // if (!isTermsAccepted) {
        //   return '/terms_of_use';
        // }

        // if (isTermsAccepted && path == '/terms_of_use') {
        //   return '/';
        // }

        final streamValue = context.read<AuthInterceptor>().stream.value;
        final token = streamValue.token;

        final isLoggingIn = state.uri.path == '/';

        if (isLoggingIn) return token != null ? '/assets' : null;

        return token != null ? null : '/';
      },
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => WalletStatsCubit(
                    shieldService: context.read(),
                  )..fetch(),
                ),
                BlocProvider(
                  create: (context) => ActiveHistoryCubit(
                    shieldService: context.read(),
                  )..getHistory(),
                ),
                BlocProvider(
                  create: (context) => ExpireHistoryCubit(
                    shieldService: context.read(),
                  )..getHistory(),
                ),
                BlocProvider(
                  create: (context) => ShieldConfigCubit(
                    shieldService: context.read(),
                  )..fetch(),
                  lazy: false,
                ),
              ],
              child: StreamBuilder(
                  stream: context
                      .read<AuthInterceptor>()
                      .stream
                      .map((event) => event.token?.token)
                      .distinctUnique(equals: (e1, e2) => e1 != e2),
                  builder: (context, asyncSnapshot) {
                    if (asyncSnapshot.data == null) {
                      return const Scaffold();
                    }

                    return NestedPage(child: navigationShell);
                  }),
            );
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/history',
                  builder: (context, state) {
                    return const HistoryPage();
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _sectionANavigatorKey,
              routes: [
                GoRoute(
                  path: '/assets',
                  builder: (context, state) {
                    return const AssetsPage();
                  },
                  routes: [
                    GoRoute(
                      parentNavigatorKey: routerKey,
                      path: 'add_shield',
                      name: 'add_shield',
                      builder: (context, state) {
                        final stat = state.extra! as WalletStats;
                        return AddShieldPage(stat: stat);
                      },
                    )
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/settings',
                  builder: (context, state) {
                    return const SettingsPage();
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const AuthPage(),
              transitionDuration: const Duration(milliseconds: 400),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final offsetAnimation = Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            );
          },
        ),
        // GoRoute(
        //   path: '/on_boarding',
        //   builder: (context, state) => const OnBoardingPage(),
        // ),
        // GoRoute(
        //   path: '/terms_of_use',
        //   builder: (context, state) => const TermsOfUsePage(),
        // )
      ],
    );
  }
}

class _RouterRefreshStream extends ChangeNotifier {
  _RouterRefreshStream({
    required Stream<PreferencesState> preferencesStream,
    required ValueStream<AuthContainer> authStream,
  }) {
    notifyListeners();
    _subscription = preferencesStream.listen((_) {
      notifyListeners();
    });
    _authSubscription = authStream.listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;
  late final StreamSubscription<AuthContainer> _authSubscription;

  @override
  void dispose() {
    _authSubscription.cancel();
    _subscription.cancel();
    super.dispose();
  }
}
