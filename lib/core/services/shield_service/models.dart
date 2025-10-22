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
  standard('Standard', 0),
  @JsonValue('Premium')
  premium('Premium', 1),
  @JsonValue('XShield')
  xShield('X', 2);

  const ShieldType(this.key, this.value);
  final String key;
  final int value;
}

enum ShieldState {
  @JsonValue('Pending')
  pending,
  @JsonValue('Active')
  active,
  @JsonValue('Expire')
  expire,
  @JsonValue('Cancel')
  cancel,
}

@freezed
class CreateShieldResponse with _$CreateShieldResponse {
  const factory CreateShieldResponse({
    required double tokenPrice,
    required ShieldType type,
    String? totalFeeInInsuranceInWei,
    String? totalFeeValueInWei,
    String? tokenAmountInWei,
    String? registerMoment,
    String? expireMoment,
    String? walletAddress,
    String? tokenAddress,
    String? signature,
    String? signatureExpire,
  }) = _CreateShieldResponse;

  factory CreateShieldResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateShieldResponseFromJson(json);
}

extension CreateShieldResponseX on CreateShieldResponse {
  BigInt? get payoutAmount {
    return BigInt.tryParse(totalFeeInInsuranceInWei ?? '');
  }

  BigInt toUintScaled(Object numValue, BigInt scale) {
    final s = (numValue is num) ? numValue.toString() : numValue.toString();
    final cleaned = s.replaceAll(RegExp('[^0-9.]'), '');
    final parts = cleaned.split('.');
    final intPart = (parts.isNotEmpty && parts[0].isNotEmpty) ? parts[0] : '0';
    final decPartRaw = (parts.length > 1) ? parts[1] : '';
    final scaleDigits = (scale.toString().length - 1).clamp(0, 1000);
    final cut =
        decPartRaw.length < scaleDigits ? decPartRaw.length : scaleDigits;
    final decPart = decPartRaw.substring(0, cut);
    final padded = decPart.padRight(scaleDigits, '0');
    final intBig = BigInt.parse(intPart);
    final decBig = padded.isEmpty ? BigInt.zero : BigInt.parse(padded);
    return intBig * scale + decBig;
  }

  BigInt toUnixSeconds(String? iso) {
    if (iso == null) {
      return BigInt.zero;
    }

    final dt = DateTime.parse(iso).toUtc();
    final secs = dt.millisecondsSinceEpoch ~/ 1000;
    return BigInt.from(secs);
  }

  Map<String, dynamic> functionParams() {
    final e8 = BigInt.from(10).pow(8);

    final payoutAmountInUsd = BigInt.tryParse(totalFeeValueInWei ?? '');
    final coverageAmount = BigInt.tryParse(tokenAmountInWei ?? '');
    final initialPrice = toUintScaled(tokenPrice, e8);
    final insuredToken = tokenAddress;
    final userAddress = walletAddress;
    final insuranceType = BigInt.from(type.value);

    final startDate =
        toUnixSeconds(registerMoment ?? DateTime.now().toIso8601String());
    final endDate = toUnixSeconds(expireMoment);
    final sigDeadline = toUnixSeconds(signatureExpire);

    return {
      'payoutAmount': payoutAmount,
      'payoutAmountInUsd': payoutAmountInUsd,
      'coverageAmount': coverageAmount,
      'startDate': startDate,
      'endDate': endDate,
      'initalPrice': initialPrice,
      'sigDeadline': sigDeadline,
      'insuredToken': insuredToken,
      'user': userAddress,
      'insuranceType': insuranceType,
    };
  }
}
