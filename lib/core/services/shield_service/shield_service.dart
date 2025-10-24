import 'package:auto_shield/core/services/http_service/http_service.dart';
import 'package:auto_shield/core/services/shield_service/models.dart';

class ShieldService {
  ShieldService({
    required HttpService adapter,
  }) : _adapter = adapter;

  final HttpService _adapter;

  Future<CreateShieldResponse?> createShield({
    required String tokenName,
    required String shieldType,
    required double amount,
    required int selectedMonth,
  }) async {
    final res = await _adapter.requestUri<Map<String, dynamic>>(
        Uri.parse('Shield/CreateShield'),
        method: HttpMethod.post,
        body: {
          'symbol': tokenName,
          'amount': amount,
          'selectedMonth': selectedMonth,
          'shieldType': switch (shieldType) {
            'Standard' => 'standard',
            'Premium' => 'premium',
            _ => 'xshield',
          },
        });

    return switch (res) {
      AppSuccessResponse(:final data) =>
        CreateShieldResponse.fromJson(data!['data'] as Map<String, dynamic>),
      _ => null,
    };
  }

  Future<List<WalletStats>?> getWalletStats() async {
    final res = await _adapter
        .requestUri<Map<String, dynamic>>(Uri.parse('Shield/GetWalletState'));

    return switch (res) {
      AppSuccessResponse(:final data) => (data!['data'] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map(WalletStats.fromJson)
          .toList(),
      _ => null,
    };
  }

  Future<List<ShieldConfig>?> getShieldConfig() async {
    final res = await _adapter
        .requestUri<Map<String, dynamic>>(Uri.parse('Shield/GetShieldsConfig'));

    List<ShieldConfig> parse(Map<String, dynamic>? data) {
      final configs = (data!['data'] as Map<String, dynamic>).entries.map((e) {
        final body = {
          'name': switch (e.key.toLowerCase()) {
            'standard' => 'Standard',
            'premium' => 'Premium',
            'xshield' => 'X',
            _ => e.key,
          },
          ...(e.value as Map<String, dynamic>)
        };
        return ShieldConfig.fromJson(body);
      });

      return [...configs];
    }

    return switch (res) {
      AppSuccessResponse(:final data) => parse(data),
      _ => null,
    };
  }

  Future<(List<ShieldHistory> data, int totalCount)> getActiveShields(
    int page,
  ) async {
    return _getShields(['Active'], page, 12);
  }

  Future<(List<ShieldHistory> data, int totalCount)> getExpireShields(
    int page,
  ) async {
    return _getShields(['Expire', 'Pending', 'Cancel'], page, 12);
  }

  Future<(List<ShieldHistory> data, int totalCount)> _getShields(
    List<String> states,
    int page,
    int size,
  ) async {
    final res = await _adapter.requestUri<Map<String, dynamic>>(
      Uri.parse('Shield/GetAllShields'),
      method: HttpMethod.post,
      body: {
        'pagination': {'page': page, 'size': size},
        'states': [...states],
      },
    );

    return switch (res) {
      AppSuccessResponse(:final data) => (
          ((data!['data'] as Map<String, dynamic>)['data'] as List<dynamic>)
              .cast<Map<String, dynamic>>()
              .map(ShieldHistory.fromJson)
              .toList(),
          (data['data'] as Map<String, dynamic>)['totalCount'] as int
        ),
      _ => (<ShieldHistory>[], -1),
    };
  }
}
