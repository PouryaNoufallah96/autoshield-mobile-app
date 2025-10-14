// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletStatsImpl _$$WalletStatsImplFromJson(Map<String, dynamic> json) =>
    _$WalletStatsImpl(
      symbol: json['symbol'] as String,
      tokenName: json['tokenName'] as String,
      balance: (json['balance'] as num).toDouble(),
      covered: (json['covered'] as num).toDouble(),
      availableForCover: (json['availableForCover'] as num).toDouble(),
    );

Map<String, dynamic> _$$WalletStatsImplToJson(_$WalletStatsImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'tokenName': instance.tokenName,
      'balance': instance.balance,
      'covered': instance.covered,
      'availableForCover': instance.availableForCover,
    };

_$ShieldHistoryImpl _$$ShieldHistoryImplFromJson(Map<String, dynamic> json) =>
    _$ShieldHistoryImpl(
      registerHash: json['registerHash'] as String,
      expireMoment: json['expireMoment'] as String,
      tokenAmount: (json['tokenAmount'] as num).toDouble(),
      tokenPrice: (json['tokenPrice'] as num).toDouble(),
      tokenValue: (json['tokenValue'] as num).toDouble(),
      monthlyFee: (json['monthlyFee'] as num).toDouble(),
      totalFeeValue: (json['totalFeeValue'] as num).toDouble(),
      totalFeeInInsurance: (json['totalFeeInInsurance'] as num).toDouble(),
      settlementAmount: (json['settlementAmount'] as num).toDouble(),
      selectedMonth: (json['selectedMonth'] as num).toInt(),
      isPaid: json['isPaid'] as bool,
      type: $enumDecode(_$ShieldTypeEnumMap, json['type']),
      state: $enumDecode(_$ShieldStateEnumMap, json['state']),
      paidHash: json['paidHash'] as String?,
      paidMoment: json['paidMoment'] as String?,
      registerMoment: json['registerMoment'] as String?,
      settlementToken: json['settlementToken'] as String?,
      shieldReference: json['shieldReference'] as String?,
      walletAddress: json['walletAddress'] as String?,
      tokenName: json['tokenName'] as String?,
    );

Map<String, dynamic> _$$ShieldHistoryImplToJson(_$ShieldHistoryImpl instance) =>
    <String, dynamic>{
      'registerHash': instance.registerHash,
      'expireMoment': instance.expireMoment,
      'tokenAmount': instance.tokenAmount,
      'tokenPrice': instance.tokenPrice,
      'tokenValue': instance.tokenValue,
      'monthlyFee': instance.monthlyFee,
      'totalFeeValue': instance.totalFeeValue,
      'totalFeeInInsurance': instance.totalFeeInInsurance,
      'settlementAmount': instance.settlementAmount,
      'selectedMonth': instance.selectedMonth,
      'isPaid': instance.isPaid,
      'type': _$ShieldTypeEnumMap[instance.type]!,
      'state': _$ShieldStateEnumMap[instance.state]!,
      'paidHash': instance.paidHash,
      'paidMoment': instance.paidMoment,
      'registerMoment': instance.registerMoment,
      'settlementToken': instance.settlementToken,
      'shieldReference': instance.shieldReference,
      'walletAddress': instance.walletAddress,
      'tokenName': instance.tokenName,
    };

const _$ShieldTypeEnumMap = {
  ShieldType.standard: 'Standard',
  ShieldType.premium: 'Premium',
  ShieldType.xShield: 'XShield',
};

const _$ShieldStateEnumMap = {
  ShieldState.pending: 'Pending',
  ShieldState.active: 'Active',
  ShieldState.expire: 'Expire',
  ShieldState.withdrawalToken: 'WithdrawalToken',
};

_$ShieldConfigImpl _$$ShieldConfigImplFromJson(Map<String, dynamic> json) =>
    _$ShieldConfigImpl(
      name: json['name'] as String,
      hashCashBack: json['hashCashBack'] as bool,
      maximumValueForShield: (json['maximumValueForShield'] as num).toDouble(),
      minimumValueForShield: (json['minimumValueForShield'] as num).toDouble(),
      monthlyFees: (json['monthlyFees'] as List<dynamic>?)
              ?.map((e) => ShiledMonthlyFee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      durationDiscount: (json['durationDiscount'] as List<dynamic>?)
              ?.map((e) =>
                  ShieldDurationDiscount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cashBackToken: json['cashBackToken'] as String?,
    );

Map<String, dynamic> _$$ShieldConfigImplToJson(_$ShieldConfigImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hashCashBack': instance.hashCashBack,
      'maximumValueForShield': instance.maximumValueForShield,
      'minimumValueForShield': instance.minimumValueForShield,
      'monthlyFees': instance.monthlyFees,
      'durationDiscount': instance.durationDiscount,
      'cashBackToken': instance.cashBackToken,
    };

_$ShiledMonthlyFeeImpl _$$ShiledMonthlyFeeImplFromJson(
        Map<String, dynamic> json) =>
    _$ShiledMonthlyFeeImpl(
      fromValue: (json['fromValue'] as num).toDouble(),
      destinationValue: (json['destinationValue'] as num).toDouble(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$ShiledMonthlyFeeImplToJson(
        _$ShiledMonthlyFeeImpl instance) =>
    <String, dynamic>{
      'fromValue': instance.fromValue,
      'destinationValue': instance.destinationValue,
      'percentage': instance.percentage,
    };

_$ShieldDurationDiscountImpl _$$ShieldDurationDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$ShieldDurationDiscountImpl(
      fromMonth: (json['fromMonth'] as num).toInt(),
      toMonth: (json['toMonth'] as num).toInt(),
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$ShieldDurationDiscountImplToJson(
        _$ShieldDurationDiscountImpl instance) =>
    <String, dynamic>{
      'fromMonth': instance.fromMonth,
      'toMonth': instance.toMonth,
      'discount': instance.discount,
    };
