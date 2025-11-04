import 'package:auto_shield/core/blocs/cubit/health_status_cubit.dart';
import 'package:auto_shield/core/blocs/preferences_bloc/preferences_bloc.dart';
import 'package:auto_shield/core/blocs/prices/price_bloc.dart';
import 'package:auto_shield/core/blocs/rz_quantity/rz_quantiy_bloc.dart';
import 'package:auto_shield/core/env.dart';
import 'package:auto_shield/core/services/auth_interceptor/auth_interceptor.dart';
import 'package:auto_shield/core/services/auth_service/auth_service.dart';
import 'package:auto_shield/core/services/http_service/http_service.dart';
import 'package:auto_shield/core/services/shield_service/shield_service.dart';
import 'package:auto_shield/core/services/socket_service/socket_service.dart';
import 'package:auto_shield/core/services/stats_serivce/stats_serivce.dart';
import 'package:auto_shield/core/services/status_service/status_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:reown_appkit/reown_appkit.dart';

Widget appInjection(Widget child) {
  return MultiRepositoryProvider(
    providers: [
      // RepositoryProvider(
      //   create: (context) => DeepLinkHandler()..init(),
      //   lazy: false,
      // ),
      RepositoryProvider(
        create: (z) {
          const rpc =
              'https://purple-proud-card.bsc.quiknode.pro/f9c9d9b7cc798a81f31d4db5f41a4f1beb3671d7/';

          return Web3Client(rpc, http.Client());
        },
        lazy: false,
      ),
      RepositoryProvider(
        create: (context) => AuthInterceptor(),
        lazy: false,
      ),

      RepositoryProvider(
        create: (context) => Dio(
          BaseOptions(
            baseUrl: Env.apiEndPoint,
          ),
        )..interceptors.addAll([
            // CurlLoggerDioInterceptor(),
            PrettyDioLogger(
              requestBody: true,
              requestHeader: true,
            ),
            context.read<AuthInterceptor>(),
          ]),
        lazy: false,
      ),
      RepositoryProvider(
        create: (context) => HttpService(
          dio: context.read(),
        ),
      ),
      RepositoryProvider(
        create: (context) => AuthService(
          adapter: context.read(),
        ),
      ),
      RepositoryProvider(
        create: (context) => ShieldService(
          adapter: context.read(),
        ),
      ),

      RepositoryProvider(
        create: (context) => SocketService(
          authInterceptor: context.read(),
        ),
      ),

      // RepositoryProvider(
      //   create: (context) => OrdersService(
      //     adapter: context.read(),
      //   ),
      // ),
      // RepositoryProvider(
      //   create: (context) => StatsService(
      //     adapter: context.read(),
      //   ),
      // ),

      RepositoryProvider(
        create: (context) => StatusService(
          adapter: context.read(),
        ),
        lazy: false,
      ),
      RepositoryProvider(
        create: (context) => StatsService(
          adapter: context.read(),
        ),
        lazy: false,
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PreferencesBloc(),
        ),
        BlocProvider(
          create: (context) => HealthStatusCubit(
            statusService: context.read(),
          )..fetch(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => PriceBloc(
            socketService: context.read(),
          )..add(const PriceEvent.started()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => RzQuantiyBloc(
            socketService: context.read(),
          )..add(const RzQuantiyEvent.started()),
          lazy: false,
        ),
      ],
      child: child,
    ),
  );
}
