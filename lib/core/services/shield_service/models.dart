import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class WalletStats with _$WalletStats {
  const factory WalletStats({
    required String symbol,
    required String tokenName,
    required double balance,
    required double covered,
    required double availableForCover,
    required double coveredValue,
    required double availableForCoverValue,
  }) = _WalletStats;

  factory WalletStats.fromJson(Map<String, dynamic> json) =>
      _$WalletStatsFromJson(json);
}

@freezed
class ShieldHistory with _$ShieldHistory {
  const factory ShieldHistory({
    required String? registerHash,
    required String expireMoment,
    required double tokenAmount,
    required double tokenPrice,
    required double tokenValue,
    required double monthlyFee,
    required double totalFeeValue,
    required double totalFeeInInsurance,
    required double settlementAmount,
    required int selectedMonth,
    required bool isPaid,
    required ShieldType type,
    required ShieldState state,
    String? paidHash,
    String? paidMoment,
    String? registerMoment,
    String? settlementToken,
    String? shieldReference,
    String? walletAddress,
    String? symbol,
    String? tokenName,
  }) = _ShieldHistory;

  factory ShieldHistory.fromJson(Map<String, dynamic> json) =>
      _$ShieldHistoryFromJson(json);
}

@freezed
class ShieldConfig with _$ShieldConfig {
  const factory ShieldConfig({
    required String name,
    required bool hashCashBack,
    required double maximumValueForShield,
    required double minimumValueForShield,
    @Default([]) List<ShiledMonthlyFee> monthlyFees,
    @Default([]) List<ShieldDurationDiscount> durationDiscount,
    String? cashBackToken,
  }) = _ShieldConfig;

  factory ShieldConfig.fromJson(Map<String, dynamic> json) =>
      _$ShieldConfigFromJson(json);
}

@freezed
class ShiledMonthlyFee with _$ShiledMonthlyFee {
  const factory ShiledMonthlyFee({
    required double fromValue,
    required double destinationValue,
    required double percentage,
  }) = _ShiledMonthlyFee;

  factory ShiledMonthlyFee.fromJson(Map<String, dynamic> json) =>
      _$ShiledMonthlyFeeFromJson(json);
}

@freezed
class ShieldDurationDiscount with _$ShieldDurationDiscount {
  const factory ShieldDurationDiscount({
    required int fromMonth,
    required int toMonth,
    required double discount,
  }) = _ShieldDurationDiscount;

  factory ShieldDurationDiscount.fromJson(Map<String, dynamic> json) =>
      _$ShieldDurationDiscountFromJson(json);
}

enum ShieldType {
  @JsonValue('Standard')
  standard('Standard'),
  @JsonValue('Premium')
  premium('Premium'),
  @JsonValue('XShield')
  xShield('X');

  const ShieldType(this.key);
  final String key;
}

enum ShieldState {
  @JsonValue('Pending')
  pending,
  @JsonValue('Active')
  active,
  @JsonValue('Expire')
  expire,
  @JsonValue('WithdrawalToken')
  withdrawalToken,
}
