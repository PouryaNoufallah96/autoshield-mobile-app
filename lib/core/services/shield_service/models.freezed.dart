// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletStats _$WalletStatsFromJson(Map<String, dynamic> json) {
  return _WalletStats.fromJson(json);
}

/// @nodoc
mixin _$WalletStats {
  String get symbol => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get covered => throw _privateConstructorUsedError;
  double get availableForCover => throw _privateConstructorUsedError;
  double get coveredValue => throw _privateConstructorUsedError;
  double get availableForCoverValue => throw _privateConstructorUsedError;

  /// Serializes this WalletStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletStatsCopyWith<WalletStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStatsCopyWith<$Res> {
  factory $WalletStatsCopyWith(
          WalletStats value, $Res Function(WalletStats) then) =
      _$WalletStatsCopyWithImpl<$Res, WalletStats>;
  @useResult
  $Res call(
      {String symbol,
      String tokenName,
      double balance,
      double covered,
      double availableForCover,
      double coveredValue,
      double availableForCoverValue});
}

/// @nodoc
class _$WalletStatsCopyWithImpl<$Res, $Val extends WalletStats>
    implements $WalletStatsCopyWith<$Res> {
  _$WalletStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tokenName = null,
    Object? balance = null,
    Object? covered = null,
    Object? availableForCover = null,
    Object? coveredValue = null,
    Object? availableForCoverValue = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      covered: null == covered
          ? _value.covered
          : covered // ignore: cast_nullable_to_non_nullable
              as double,
      availableForCover: null == availableForCover
          ? _value.availableForCover
          : availableForCover // ignore: cast_nullable_to_non_nullable
              as double,
      coveredValue: null == coveredValue
          ? _value.coveredValue
          : coveredValue // ignore: cast_nullable_to_non_nullable
              as double,
      availableForCoverValue: null == availableForCoverValue
          ? _value.availableForCoverValue
          : availableForCoverValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletStatsImplCopyWith<$Res>
    implements $WalletStatsCopyWith<$Res> {
  factory _$$WalletStatsImplCopyWith(
          _$WalletStatsImpl value, $Res Function(_$WalletStatsImpl) then) =
      __$$WalletStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String tokenName,
      double balance,
      double covered,
      double availableForCover,
      double coveredValue,
      double availableForCoverValue});
}

/// @nodoc
class __$$WalletStatsImplCopyWithImpl<$Res>
    extends _$WalletStatsCopyWithImpl<$Res, _$WalletStatsImpl>
    implements _$$WalletStatsImplCopyWith<$Res> {
  __$$WalletStatsImplCopyWithImpl(
      _$WalletStatsImpl _value, $Res Function(_$WalletStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? tokenName = null,
    Object? balance = null,
    Object? covered = null,
    Object? availableForCover = null,
    Object? coveredValue = null,
    Object? availableForCoverValue = null,
  }) {
    return _then(_$WalletStatsImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      covered: null == covered
          ? _value.covered
          : covered // ignore: cast_nullable_to_non_nullable
              as double,
      availableForCover: null == availableForCover
          ? _value.availableForCover
          : availableForCover // ignore: cast_nullable_to_non_nullable
              as double,
      coveredValue: null == coveredValue
          ? _value.coveredValue
          : coveredValue // ignore: cast_nullable_to_non_nullable
              as double,
      availableForCoverValue: null == availableForCoverValue
          ? _value.availableForCoverValue
          : availableForCoverValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletStatsImpl implements _WalletStats {
  const _$WalletStatsImpl(
      {required this.symbol,
      required this.tokenName,
      required this.balance,
      required this.covered,
      required this.availableForCover,
      required this.coveredValue,
      required this.availableForCoverValue});

  factory _$WalletStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletStatsImplFromJson(json);

  @override
  final String symbol;
  @override
  final String tokenName;
  @override
  final double balance;
  @override
  final double covered;
  @override
  final double availableForCover;
  @override
  final double coveredValue;
  @override
  final double availableForCoverValue;

  @override
  String toString() {
    return 'WalletStats(symbol: $symbol, tokenName: $tokenName, balance: $balance, covered: $covered, availableForCover: $availableForCover, coveredValue: $coveredValue, availableForCoverValue: $availableForCoverValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStatsImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.covered, covered) || other.covered == covered) &&
            (identical(other.availableForCover, availableForCover) ||
                other.availableForCover == availableForCover) &&
            (identical(other.coveredValue, coveredValue) ||
                other.coveredValue == coveredValue) &&
            (identical(other.availableForCoverValue, availableForCoverValue) ||
                other.availableForCoverValue == availableForCoverValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, tokenName, balance,
      covered, availableForCover, coveredValue, availableForCoverValue);

  /// Create a copy of WalletStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStatsImplCopyWith<_$WalletStatsImpl> get copyWith =>
      __$$WalletStatsImplCopyWithImpl<_$WalletStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletStatsImplToJson(
      this,
    );
  }
}

abstract class _WalletStats implements WalletStats {
  const factory _WalletStats(
      {required final String symbol,
      required final String tokenName,
      required final double balance,
      required final double covered,
      required final double availableForCover,
      required final double coveredValue,
      required final double availableForCoverValue}) = _$WalletStatsImpl;

  factory _WalletStats.fromJson(Map<String, dynamic> json) =
      _$WalletStatsImpl.fromJson;

  @override
  String get symbol;
  @override
  String get tokenName;
  @override
  double get balance;
  @override
  double get covered;
  @override
  double get availableForCover;
  @override
  double get coveredValue;
  @override
  double get availableForCoverValue;

  /// Create a copy of WalletStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletStatsImplCopyWith<_$WalletStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShieldHistory _$ShieldHistoryFromJson(Map<String, dynamic> json) {
  return _ShieldHistory.fromJson(json);
}

/// @nodoc
mixin _$ShieldHistory {
  String? get registerHash => throw _privateConstructorUsedError;
  String get expireMoment => throw _privateConstructorUsedError;
  double get tokenAmount => throw _privateConstructorUsedError;
  double get tokenPrice => throw _privateConstructorUsedError;
  double get tokenValue => throw _privateConstructorUsedError;
  double get monthlyFee => throw _privateConstructorUsedError;
  double get totalFeeValue => throw _privateConstructorUsedError;
  double get totalFeeInInsurance => throw _privateConstructorUsedError;
  double get settlementAmount => throw _privateConstructorUsedError;
  int get selectedMonth => throw _privateConstructorUsedError;
  ShieldType get type => throw _privateConstructorUsedError;
  ShieldState get state => throw _privateConstructorUsedError;
  String? get paidHash => throw _privateConstructorUsedError;
  String? get paidMoment => throw _privateConstructorUsedError;
  String? get registerMoment => throw _privateConstructorUsedError;
  String? get settlementToken => throw _privateConstructorUsedError;
  String? get shieldReference => throw _privateConstructorUsedError;
  String? get walletAddress => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  String? get tokenName => throw _privateConstructorUsedError;

  /// Serializes this ShieldHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShieldHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShieldHistoryCopyWith<ShieldHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShieldHistoryCopyWith<$Res> {
  factory $ShieldHistoryCopyWith(
          ShieldHistory value, $Res Function(ShieldHistory) then) =
      _$ShieldHistoryCopyWithImpl<$Res, ShieldHistory>;
  @useResult
  $Res call(
      {String? registerHash,
      String expireMoment,
      double tokenAmount,
      double tokenPrice,
      double tokenValue,
      double monthlyFee,
      double totalFeeValue,
      double totalFeeInInsurance,
      double settlementAmount,
      int selectedMonth,
      ShieldType type,
      ShieldState state,
      String? paidHash,
      String? paidMoment,
      String? registerMoment,
      String? settlementToken,
      String? shieldReference,
      String? walletAddress,
      String? symbol,
      String? tokenName});
}

/// @nodoc
class _$ShieldHistoryCopyWithImpl<$Res, $Val extends ShieldHistory>
    implements $ShieldHistoryCopyWith<$Res> {
  _$ShieldHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShieldHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerHash = freezed,
    Object? expireMoment = null,
    Object? tokenAmount = null,
    Object? tokenPrice = null,
    Object? tokenValue = null,
    Object? monthlyFee = null,
    Object? totalFeeValue = null,
    Object? totalFeeInInsurance = null,
    Object? settlementAmount = null,
    Object? selectedMonth = null,
    Object? type = null,
    Object? state = null,
    Object? paidHash = freezed,
    Object? paidMoment = freezed,
    Object? registerMoment = freezed,
    Object? settlementToken = freezed,
    Object? shieldReference = freezed,
    Object? walletAddress = freezed,
    Object? symbol = freezed,
    Object? tokenName = freezed,
  }) {
    return _then(_value.copyWith(
      registerHash: freezed == registerHash
          ? _value.registerHash
          : registerHash // ignore: cast_nullable_to_non_nullable
              as String?,
      expireMoment: null == expireMoment
          ? _value.expireMoment
          : expireMoment // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tokenPrice: null == tokenPrice
          ? _value.tokenPrice
          : tokenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      tokenValue: null == tokenValue
          ? _value.tokenValue
          : tokenValue // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyFee: null == monthlyFee
          ? _value.monthlyFee
          : monthlyFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalFeeValue: null == totalFeeValue
          ? _value.totalFeeValue
          : totalFeeValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalFeeInInsurance: null == totalFeeInInsurance
          ? _value.totalFeeInInsurance
          : totalFeeInInsurance // ignore: cast_nullable_to_non_nullable
              as double,
      settlementAmount: null == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShieldType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ShieldState,
      paidHash: freezed == paidHash
          ? _value.paidHash
          : paidHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paidMoment: freezed == paidMoment
          ? _value.paidMoment
          : paidMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMoment: freezed == registerMoment
          ? _value.registerMoment
          : registerMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      settlementToken: freezed == settlementToken
          ? _value.settlementToken
          : settlementToken // ignore: cast_nullable_to_non_nullable
              as String?,
      shieldReference: freezed == shieldReference
          ? _value.shieldReference
          : shieldReference // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShieldHistoryImplCopyWith<$Res>
    implements $ShieldHistoryCopyWith<$Res> {
  factory _$$ShieldHistoryImplCopyWith(
          _$ShieldHistoryImpl value, $Res Function(_$ShieldHistoryImpl) then) =
      __$$ShieldHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? registerHash,
      String expireMoment,
      double tokenAmount,
      double tokenPrice,
      double tokenValue,
      double monthlyFee,
      double totalFeeValue,
      double totalFeeInInsurance,
      double settlementAmount,
      int selectedMonth,
      ShieldType type,
      ShieldState state,
      String? paidHash,
      String? paidMoment,
      String? registerMoment,
      String? settlementToken,
      String? shieldReference,
      String? walletAddress,
      String? symbol,
      String? tokenName});
}

/// @nodoc
class __$$ShieldHistoryImplCopyWithImpl<$Res>
    extends _$ShieldHistoryCopyWithImpl<$Res, _$ShieldHistoryImpl>
    implements _$$ShieldHistoryImplCopyWith<$Res> {
  __$$ShieldHistoryImplCopyWithImpl(
      _$ShieldHistoryImpl _value, $Res Function(_$ShieldHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShieldHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerHash = freezed,
    Object? expireMoment = null,
    Object? tokenAmount = null,
    Object? tokenPrice = null,
    Object? tokenValue = null,
    Object? monthlyFee = null,
    Object? totalFeeValue = null,
    Object? totalFeeInInsurance = null,
    Object? settlementAmount = null,
    Object? selectedMonth = null,
    Object? type = null,
    Object? state = null,
    Object? paidHash = freezed,
    Object? paidMoment = freezed,
    Object? registerMoment = freezed,
    Object? settlementToken = freezed,
    Object? shieldReference = freezed,
    Object? walletAddress = freezed,
    Object? symbol = freezed,
    Object? tokenName = freezed,
  }) {
    return _then(_$ShieldHistoryImpl(
      registerHash: freezed == registerHash
          ? _value.registerHash
          : registerHash // ignore: cast_nullable_to_non_nullable
              as String?,
      expireMoment: null == expireMoment
          ? _value.expireMoment
          : expireMoment // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tokenPrice: null == tokenPrice
          ? _value.tokenPrice
          : tokenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      tokenValue: null == tokenValue
          ? _value.tokenValue
          : tokenValue // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyFee: null == monthlyFee
          ? _value.monthlyFee
          : monthlyFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalFeeValue: null == totalFeeValue
          ? _value.totalFeeValue
          : totalFeeValue // ignore: cast_nullable_to_non_nullable
              as double,
      totalFeeInInsurance: null == totalFeeInInsurance
          ? _value.totalFeeInInsurance
          : totalFeeInInsurance // ignore: cast_nullable_to_non_nullable
              as double,
      settlementAmount: null == settlementAmount
          ? _value.settlementAmount
          : settlementAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedMonth: null == selectedMonth
          ? _value.selectedMonth
          : selectedMonth // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShieldType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ShieldState,
      paidHash: freezed == paidHash
          ? _value.paidHash
          : paidHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paidMoment: freezed == paidMoment
          ? _value.paidMoment
          : paidMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMoment: freezed == registerMoment
          ? _value.registerMoment
          : registerMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      settlementToken: freezed == settlementToken
          ? _value.settlementToken
          : settlementToken // ignore: cast_nullable_to_non_nullable
              as String?,
      shieldReference: freezed == shieldReference
          ? _value.shieldReference
          : shieldReference // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenName: freezed == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShieldHistoryImpl implements _ShieldHistory {
  const _$ShieldHistoryImpl(
      {required this.registerHash,
      required this.expireMoment,
      required this.tokenAmount,
      required this.tokenPrice,
      required this.tokenValue,
      required this.monthlyFee,
      required this.totalFeeValue,
      required this.totalFeeInInsurance,
      required this.settlementAmount,
      required this.selectedMonth,
      required this.type,
      required this.state,
      this.paidHash,
      this.paidMoment,
      this.registerMoment,
      this.settlementToken,
      this.shieldReference,
      this.walletAddress,
      this.symbol,
      this.tokenName});

  factory _$ShieldHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShieldHistoryImplFromJson(json);

  @override
  final String? registerHash;
  @override
  final String expireMoment;
  @override
  final double tokenAmount;
  @override
  final double tokenPrice;
  @override
  final double tokenValue;
  @override
  final double monthlyFee;
  @override
  final double totalFeeValue;
  @override
  final double totalFeeInInsurance;
  @override
  final double settlementAmount;
  @override
  final int selectedMonth;
  @override
  final ShieldType type;
  @override
  final ShieldState state;
  @override
  final String? paidHash;
  @override
  final String? paidMoment;
  @override
  final String? registerMoment;
  @override
  final String? settlementToken;
  @override
  final String? shieldReference;
  @override
  final String? walletAddress;
  @override
  final String? symbol;
  @override
  final String? tokenName;

  @override
  String toString() {
    return 'ShieldHistory(registerHash: $registerHash, expireMoment: $expireMoment, tokenAmount: $tokenAmount, tokenPrice: $tokenPrice, tokenValue: $tokenValue, monthlyFee: $monthlyFee, totalFeeValue: $totalFeeValue, totalFeeInInsurance: $totalFeeInInsurance, settlementAmount: $settlementAmount, selectedMonth: $selectedMonth, type: $type, state: $state, paidHash: $paidHash, paidMoment: $paidMoment, registerMoment: $registerMoment, settlementToken: $settlementToken, shieldReference: $shieldReference, walletAddress: $walletAddress, symbol: $symbol, tokenName: $tokenName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShieldHistoryImpl &&
            (identical(other.registerHash, registerHash) ||
                other.registerHash == registerHash) &&
            (identical(other.expireMoment, expireMoment) ||
                other.expireMoment == expireMoment) &&
            (identical(other.tokenAmount, tokenAmount) ||
                other.tokenAmount == tokenAmount) &&
            (identical(other.tokenPrice, tokenPrice) ||
                other.tokenPrice == tokenPrice) &&
            (identical(other.tokenValue, tokenValue) ||
                other.tokenValue == tokenValue) &&
            (identical(other.monthlyFee, monthlyFee) ||
                other.monthlyFee == monthlyFee) &&
            (identical(other.totalFeeValue, totalFeeValue) ||
                other.totalFeeValue == totalFeeValue) &&
            (identical(other.totalFeeInInsurance, totalFeeInInsurance) ||
                other.totalFeeInInsurance == totalFeeInInsurance) &&
            (identical(other.settlementAmount, settlementAmount) ||
                other.settlementAmount == settlementAmount) &&
            (identical(other.selectedMonth, selectedMonth) ||
                other.selectedMonth == selectedMonth) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.paidHash, paidHash) ||
                other.paidHash == paidHash) &&
            (identical(other.paidMoment, paidMoment) ||
                other.paidMoment == paidMoment) &&
            (identical(other.registerMoment, registerMoment) ||
                other.registerMoment == registerMoment) &&
            (identical(other.settlementToken, settlementToken) ||
                other.settlementToken == settlementToken) &&
            (identical(other.shieldReference, shieldReference) ||
                other.shieldReference == shieldReference) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        registerHash,
        expireMoment,
        tokenAmount,
        tokenPrice,
        tokenValue,
        monthlyFee,
        totalFeeValue,
        totalFeeInInsurance,
        settlementAmount,
        selectedMonth,
        type,
        state,
        paidHash,
        paidMoment,
        registerMoment,
        settlementToken,
        shieldReference,
        walletAddress,
        symbol,
        tokenName
      ]);

  /// Create a copy of ShieldHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShieldHistoryImplCopyWith<_$ShieldHistoryImpl> get copyWith =>
      __$$ShieldHistoryImplCopyWithImpl<_$ShieldHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShieldHistoryImplToJson(
      this,
    );
  }
}

abstract class _ShieldHistory implements ShieldHistory {
  const factory _ShieldHistory(
      {required final String? registerHash,
      required final String expireMoment,
      required final double tokenAmount,
      required final double tokenPrice,
      required final double tokenValue,
      required final double monthlyFee,
      required final double totalFeeValue,
      required final double totalFeeInInsurance,
      required final double settlementAmount,
      required final int selectedMonth,
      required final ShieldType type,
      required final ShieldState state,
      final String? paidHash,
      final String? paidMoment,
      final String? registerMoment,
      final String? settlementToken,
      final String? shieldReference,
      final String? walletAddress,
      final String? symbol,
      final String? tokenName}) = _$ShieldHistoryImpl;

  factory _ShieldHistory.fromJson(Map<String, dynamic> json) =
      _$ShieldHistoryImpl.fromJson;

  @override
  String? get registerHash;
  @override
  String get expireMoment;
  @override
  double get tokenAmount;
  @override
  double get tokenPrice;
  @override
  double get tokenValue;
  @override
  double get monthlyFee;
  @override
  double get totalFeeValue;
  @override
  double get totalFeeInInsurance;
  @override
  double get settlementAmount;
  @override
  int get selectedMonth;
  @override
  ShieldType get type;
  @override
  ShieldState get state;
  @override
  String? get paidHash;
  @override
  String? get paidMoment;
  @override
  String? get registerMoment;
  @override
  String? get settlementToken;
  @override
  String? get shieldReference;
  @override
  String? get walletAddress;
  @override
  String? get symbol;
  @override
  String? get tokenName;

  /// Create a copy of ShieldHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShieldHistoryImplCopyWith<_$ShieldHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShieldConfig _$ShieldConfigFromJson(Map<String, dynamic> json) {
  return _ShieldConfig.fromJson(json);
}

/// @nodoc
mixin _$ShieldConfig {
  String get name => throw _privateConstructorUsedError;
  bool get hashCashBack => throw _privateConstructorUsedError;
  double get maximumValueForShield => throw _privateConstructorUsedError;
  double get minimumValueForShield => throw _privateConstructorUsedError;
  List<ShiledMonthlyFee> get monthlyFees => throw _privateConstructorUsedError;
  List<ShieldDurationDiscount> get durationDiscount =>
      throw _privateConstructorUsedError;
  String? get cashBackToken => throw _privateConstructorUsedError;

  /// Serializes this ShieldConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShieldConfigCopyWith<ShieldConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShieldConfigCopyWith<$Res> {
  factory $ShieldConfigCopyWith(
          ShieldConfig value, $Res Function(ShieldConfig) then) =
      _$ShieldConfigCopyWithImpl<$Res, ShieldConfig>;
  @useResult
  $Res call(
      {String name,
      bool hashCashBack,
      double maximumValueForShield,
      double minimumValueForShield,
      List<ShiledMonthlyFee> monthlyFees,
      List<ShieldDurationDiscount> durationDiscount,
      String? cashBackToken});
}

/// @nodoc
class _$ShieldConfigCopyWithImpl<$Res, $Val extends ShieldConfig>
    implements $ShieldConfigCopyWith<$Res> {
  _$ShieldConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hashCashBack = null,
    Object? maximumValueForShield = null,
    Object? minimumValueForShield = null,
    Object? monthlyFees = null,
    Object? durationDiscount = null,
    Object? cashBackToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hashCashBack: null == hashCashBack
          ? _value.hashCashBack
          : hashCashBack // ignore: cast_nullable_to_non_nullable
              as bool,
      maximumValueForShield: null == maximumValueForShield
          ? _value.maximumValueForShield
          : maximumValueForShield // ignore: cast_nullable_to_non_nullable
              as double,
      minimumValueForShield: null == minimumValueForShield
          ? _value.minimumValueForShield
          : minimumValueForShield // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyFees: null == monthlyFees
          ? _value.monthlyFees
          : monthlyFees // ignore: cast_nullable_to_non_nullable
              as List<ShiledMonthlyFee>,
      durationDiscount: null == durationDiscount
          ? _value.durationDiscount
          : durationDiscount // ignore: cast_nullable_to_non_nullable
              as List<ShieldDurationDiscount>,
      cashBackToken: freezed == cashBackToken
          ? _value.cashBackToken
          : cashBackToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShieldConfigImplCopyWith<$Res>
    implements $ShieldConfigCopyWith<$Res> {
  factory _$$ShieldConfigImplCopyWith(
          _$ShieldConfigImpl value, $Res Function(_$ShieldConfigImpl) then) =
      __$$ShieldConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool hashCashBack,
      double maximumValueForShield,
      double minimumValueForShield,
      List<ShiledMonthlyFee> monthlyFees,
      List<ShieldDurationDiscount> durationDiscount,
      String? cashBackToken});
}

/// @nodoc
class __$$ShieldConfigImplCopyWithImpl<$Res>
    extends _$ShieldConfigCopyWithImpl<$Res, _$ShieldConfigImpl>
    implements _$$ShieldConfigImplCopyWith<$Res> {
  __$$ShieldConfigImplCopyWithImpl(
      _$ShieldConfigImpl _value, $Res Function(_$ShieldConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? hashCashBack = null,
    Object? maximumValueForShield = null,
    Object? minimumValueForShield = null,
    Object? monthlyFees = null,
    Object? durationDiscount = null,
    Object? cashBackToken = freezed,
  }) {
    return _then(_$ShieldConfigImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hashCashBack: null == hashCashBack
          ? _value.hashCashBack
          : hashCashBack // ignore: cast_nullable_to_non_nullable
              as bool,
      maximumValueForShield: null == maximumValueForShield
          ? _value.maximumValueForShield
          : maximumValueForShield // ignore: cast_nullable_to_non_nullable
              as double,
      minimumValueForShield: null == minimumValueForShield
          ? _value.minimumValueForShield
          : minimumValueForShield // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyFees: null == monthlyFees
          ? _value._monthlyFees
          : monthlyFees // ignore: cast_nullable_to_non_nullable
              as List<ShiledMonthlyFee>,
      durationDiscount: null == durationDiscount
          ? _value._durationDiscount
          : durationDiscount // ignore: cast_nullable_to_non_nullable
              as List<ShieldDurationDiscount>,
      cashBackToken: freezed == cashBackToken
          ? _value.cashBackToken
          : cashBackToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShieldConfigImpl implements _ShieldConfig {
  const _$ShieldConfigImpl(
      {required this.name,
      required this.hashCashBack,
      required this.maximumValueForShield,
      required this.minimumValueForShield,
      final List<ShiledMonthlyFee> monthlyFees = const [],
      final List<ShieldDurationDiscount> durationDiscount = const [],
      this.cashBackToken})
      : _monthlyFees = monthlyFees,
        _durationDiscount = durationDiscount;

  factory _$ShieldConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShieldConfigImplFromJson(json);

  @override
  final String name;
  @override
  final bool hashCashBack;
  @override
  final double maximumValueForShield;
  @override
  final double minimumValueForShield;
  final List<ShiledMonthlyFee> _monthlyFees;
  @override
  @JsonKey()
  List<ShiledMonthlyFee> get monthlyFees {
    if (_monthlyFees is EqualUnmodifiableListView) return _monthlyFees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyFees);
  }

  final List<ShieldDurationDiscount> _durationDiscount;
  @override
  @JsonKey()
  List<ShieldDurationDiscount> get durationDiscount {
    if (_durationDiscount is EqualUnmodifiableListView)
      return _durationDiscount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durationDiscount);
  }

  @override
  final String? cashBackToken;

  @override
  String toString() {
    return 'ShieldConfig(name: $name, hashCashBack: $hashCashBack, maximumValueForShield: $maximumValueForShield, minimumValueForShield: $minimumValueForShield, monthlyFees: $monthlyFees, durationDiscount: $durationDiscount, cashBackToken: $cashBackToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShieldConfigImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hashCashBack, hashCashBack) ||
                other.hashCashBack == hashCashBack) &&
            (identical(other.maximumValueForShield, maximumValueForShield) ||
                other.maximumValueForShield == maximumValueForShield) &&
            (identical(other.minimumValueForShield, minimumValueForShield) ||
                other.minimumValueForShield == minimumValueForShield) &&
            const DeepCollectionEquality()
                .equals(other._monthlyFees, _monthlyFees) &&
            const DeepCollectionEquality()
                .equals(other._durationDiscount, _durationDiscount) &&
            (identical(other.cashBackToken, cashBackToken) ||
                other.cashBackToken == cashBackToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      hashCashBack,
      maximumValueForShield,
      minimumValueForShield,
      const DeepCollectionEquality().hash(_monthlyFees),
      const DeepCollectionEquality().hash(_durationDiscount),
      cashBackToken);

  /// Create a copy of ShieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShieldConfigImplCopyWith<_$ShieldConfigImpl> get copyWith =>
      __$$ShieldConfigImplCopyWithImpl<_$ShieldConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShieldConfigImplToJson(
      this,
    );
  }
}

abstract class _ShieldConfig implements ShieldConfig {
  const factory _ShieldConfig(
      {required final String name,
      required final bool hashCashBack,
      required final double maximumValueForShield,
      required final double minimumValueForShield,
      final List<ShiledMonthlyFee> monthlyFees,
      final List<ShieldDurationDiscount> durationDiscount,
      final String? cashBackToken}) = _$ShieldConfigImpl;

  factory _ShieldConfig.fromJson(Map<String, dynamic> json) =
      _$ShieldConfigImpl.fromJson;

  @override
  String get name;
  @override
  bool get hashCashBack;
  @override
  double get maximumValueForShield;
  @override
  double get minimumValueForShield;
  @override
  List<ShiledMonthlyFee> get monthlyFees;
  @override
  List<ShieldDurationDiscount> get durationDiscount;
  @override
  String? get cashBackToken;

  /// Create a copy of ShieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShieldConfigImplCopyWith<_$ShieldConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiledMonthlyFee _$ShiledMonthlyFeeFromJson(Map<String, dynamic> json) {
  return _ShiledMonthlyFee.fromJson(json);
}

/// @nodoc
mixin _$ShiledMonthlyFee {
  double get fromValue => throw _privateConstructorUsedError;
  double get destinationValue => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;

  /// Serializes this ShiledMonthlyFee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiledMonthlyFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiledMonthlyFeeCopyWith<ShiledMonthlyFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiledMonthlyFeeCopyWith<$Res> {
  factory $ShiledMonthlyFeeCopyWith(
          ShiledMonthlyFee value, $Res Function(ShiledMonthlyFee) then) =
      _$ShiledMonthlyFeeCopyWithImpl<$Res, ShiledMonthlyFee>;
  @useResult
  $Res call({double fromValue, double destinationValue, double percentage});
}

/// @nodoc
class _$ShiledMonthlyFeeCopyWithImpl<$Res, $Val extends ShiledMonthlyFee>
    implements $ShiledMonthlyFeeCopyWith<$Res> {
  _$ShiledMonthlyFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiledMonthlyFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromValue = null,
    Object? destinationValue = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      fromValue: null == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as double,
      destinationValue: null == destinationValue
          ? _value.destinationValue
          : destinationValue // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiledMonthlyFeeImplCopyWith<$Res>
    implements $ShiledMonthlyFeeCopyWith<$Res> {
  factory _$$ShiledMonthlyFeeImplCopyWith(_$ShiledMonthlyFeeImpl value,
          $Res Function(_$ShiledMonthlyFeeImpl) then) =
      __$$ShiledMonthlyFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double fromValue, double destinationValue, double percentage});
}

/// @nodoc
class __$$ShiledMonthlyFeeImplCopyWithImpl<$Res>
    extends _$ShiledMonthlyFeeCopyWithImpl<$Res, _$ShiledMonthlyFeeImpl>
    implements _$$ShiledMonthlyFeeImplCopyWith<$Res> {
  __$$ShiledMonthlyFeeImplCopyWithImpl(_$ShiledMonthlyFeeImpl _value,
      $Res Function(_$ShiledMonthlyFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShiledMonthlyFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromValue = null,
    Object? destinationValue = null,
    Object? percentage = null,
  }) {
    return _then(_$ShiledMonthlyFeeImpl(
      fromValue: null == fromValue
          ? _value.fromValue
          : fromValue // ignore: cast_nullable_to_non_nullable
              as double,
      destinationValue: null == destinationValue
          ? _value.destinationValue
          : destinationValue // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiledMonthlyFeeImpl implements _ShiledMonthlyFee {
  const _$ShiledMonthlyFeeImpl(
      {required this.fromValue,
      required this.destinationValue,
      required this.percentage});

  factory _$ShiledMonthlyFeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiledMonthlyFeeImplFromJson(json);

  @override
  final double fromValue;
  @override
  final double destinationValue;
  @override
  final double percentage;

  @override
  String toString() {
    return 'ShiledMonthlyFee(fromValue: $fromValue, destinationValue: $destinationValue, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiledMonthlyFeeImpl &&
            (identical(other.fromValue, fromValue) ||
                other.fromValue == fromValue) &&
            (identical(other.destinationValue, destinationValue) ||
                other.destinationValue == destinationValue) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromValue, destinationValue, percentage);

  /// Create a copy of ShiledMonthlyFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiledMonthlyFeeImplCopyWith<_$ShiledMonthlyFeeImpl> get copyWith =>
      __$$ShiledMonthlyFeeImplCopyWithImpl<_$ShiledMonthlyFeeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiledMonthlyFeeImplToJson(
      this,
    );
  }
}

abstract class _ShiledMonthlyFee implements ShiledMonthlyFee {
  const factory _ShiledMonthlyFee(
      {required final double fromValue,
      required final double destinationValue,
      required final double percentage}) = _$ShiledMonthlyFeeImpl;

  factory _ShiledMonthlyFee.fromJson(Map<String, dynamic> json) =
      _$ShiledMonthlyFeeImpl.fromJson;

  @override
  double get fromValue;
  @override
  double get destinationValue;
  @override
  double get percentage;

  /// Create a copy of ShiledMonthlyFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiledMonthlyFeeImplCopyWith<_$ShiledMonthlyFeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShieldDurationDiscount _$ShieldDurationDiscountFromJson(
    Map<String, dynamic> json) {
  return _ShieldDurationDiscount.fromJson(json);
}

/// @nodoc
mixin _$ShieldDurationDiscount {
  int get fromMonth => throw _privateConstructorUsedError;
  int get toMonth => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;

  /// Serializes this ShieldDurationDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShieldDurationDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShieldDurationDiscountCopyWith<ShieldDurationDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShieldDurationDiscountCopyWith<$Res> {
  factory $ShieldDurationDiscountCopyWith(ShieldDurationDiscount value,
          $Res Function(ShieldDurationDiscount) then) =
      _$ShieldDurationDiscountCopyWithImpl<$Res, ShieldDurationDiscount>;
  @useResult
  $Res call({int fromMonth, int toMonth, double discount});
}

/// @nodoc
class _$ShieldDurationDiscountCopyWithImpl<$Res,
        $Val extends ShieldDurationDiscount>
    implements $ShieldDurationDiscountCopyWith<$Res> {
  _$ShieldDurationDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShieldDurationDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromMonth = null,
    Object? toMonth = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      fromMonth: null == fromMonth
          ? _value.fromMonth
          : fromMonth // ignore: cast_nullable_to_non_nullable
              as int,
      toMonth: null == toMonth
          ? _value.toMonth
          : toMonth // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShieldDurationDiscountImplCopyWith<$Res>
    implements $ShieldDurationDiscountCopyWith<$Res> {
  factory _$$ShieldDurationDiscountImplCopyWith(
          _$ShieldDurationDiscountImpl value,
          $Res Function(_$ShieldDurationDiscountImpl) then) =
      __$$ShieldDurationDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromMonth, int toMonth, double discount});
}

/// @nodoc
class __$$ShieldDurationDiscountImplCopyWithImpl<$Res>
    extends _$ShieldDurationDiscountCopyWithImpl<$Res,
        _$ShieldDurationDiscountImpl>
    implements _$$ShieldDurationDiscountImplCopyWith<$Res> {
  __$$ShieldDurationDiscountImplCopyWithImpl(
      _$ShieldDurationDiscountImpl _value,
      $Res Function(_$ShieldDurationDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShieldDurationDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromMonth = null,
    Object? toMonth = null,
    Object? discount = null,
  }) {
    return _then(_$ShieldDurationDiscountImpl(
      fromMonth: null == fromMonth
          ? _value.fromMonth
          : fromMonth // ignore: cast_nullable_to_non_nullable
              as int,
      toMonth: null == toMonth
          ? _value.toMonth
          : toMonth // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShieldDurationDiscountImpl implements _ShieldDurationDiscount {
  const _$ShieldDurationDiscountImpl(
      {required this.fromMonth, required this.toMonth, required this.discount});

  factory _$ShieldDurationDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShieldDurationDiscountImplFromJson(json);

  @override
  final int fromMonth;
  @override
  final int toMonth;
  @override
  final double discount;

  @override
  String toString() {
    return 'ShieldDurationDiscount(fromMonth: $fromMonth, toMonth: $toMonth, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShieldDurationDiscountImpl &&
            (identical(other.fromMonth, fromMonth) ||
                other.fromMonth == fromMonth) &&
            (identical(other.toMonth, toMonth) || other.toMonth == toMonth) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fromMonth, toMonth, discount);

  /// Create a copy of ShieldDurationDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShieldDurationDiscountImplCopyWith<_$ShieldDurationDiscountImpl>
      get copyWith => __$$ShieldDurationDiscountImplCopyWithImpl<
          _$ShieldDurationDiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShieldDurationDiscountImplToJson(
      this,
    );
  }
}

abstract class _ShieldDurationDiscount implements ShieldDurationDiscount {
  const factory _ShieldDurationDiscount(
      {required final int fromMonth,
      required final int toMonth,
      required final double discount}) = _$ShieldDurationDiscountImpl;

  factory _ShieldDurationDiscount.fromJson(Map<String, dynamic> json) =
      _$ShieldDurationDiscountImpl.fromJson;

  @override
  int get fromMonth;
  @override
  int get toMonth;
  @override
  double get discount;

  /// Create a copy of ShieldDurationDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShieldDurationDiscountImplCopyWith<_$ShieldDurationDiscountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateShieldResponse _$CreateShieldResponseFromJson(Map<String, dynamic> json) {
  return _CreateShieldResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateShieldResponse {
  double get tokenPrice => throw _privateConstructorUsedError;
  ShieldType get type => throw _privateConstructorUsedError;
  String? get totalFeeInInsuranceInWei => throw _privateConstructorUsedError;
  String? get totalFeeValueInWei => throw _privateConstructorUsedError;
  String? get tokenAmountInWei => throw _privateConstructorUsedError;
  String? get registerMoment => throw _privateConstructorUsedError;
  String? get expireMoment => throw _privateConstructorUsedError;
  String? get walletAddress => throw _privateConstructorUsedError;
  String? get tokenAddress => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  String? get signatureExpire => throw _privateConstructorUsedError;

  /// Serializes this CreateShieldResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateShieldResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateShieldResponseCopyWith<CreateShieldResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShieldResponseCopyWith<$Res> {
  factory $CreateShieldResponseCopyWith(CreateShieldResponse value,
          $Res Function(CreateShieldResponse) then) =
      _$CreateShieldResponseCopyWithImpl<$Res, CreateShieldResponse>;
  @useResult
  $Res call(
      {double tokenPrice,
      ShieldType type,
      String? totalFeeInInsuranceInWei,
      String? totalFeeValueInWei,
      String? tokenAmountInWei,
      String? registerMoment,
      String? expireMoment,
      String? walletAddress,
      String? tokenAddress,
      String? signature,
      String? signatureExpire});
}

/// @nodoc
class _$CreateShieldResponseCopyWithImpl<$Res,
        $Val extends CreateShieldResponse>
    implements $CreateShieldResponseCopyWith<$Res> {
  _$CreateShieldResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateShieldResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenPrice = null,
    Object? type = null,
    Object? totalFeeInInsuranceInWei = freezed,
    Object? totalFeeValueInWei = freezed,
    Object? tokenAmountInWei = freezed,
    Object? registerMoment = freezed,
    Object? expireMoment = freezed,
    Object? walletAddress = freezed,
    Object? tokenAddress = freezed,
    Object? signature = freezed,
    Object? signatureExpire = freezed,
  }) {
    return _then(_value.copyWith(
      tokenPrice: null == tokenPrice
          ? _value.tokenPrice
          : tokenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShieldType,
      totalFeeInInsuranceInWei: freezed == totalFeeInInsuranceInWei
          ? _value.totalFeeInInsuranceInWei
          : totalFeeInInsuranceInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeeValueInWei: freezed == totalFeeValueInWei
          ? _value.totalFeeValueInWei
          : totalFeeValueInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenAmountInWei: freezed == tokenAmountInWei
          ? _value.tokenAmountInWei
          : tokenAmountInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMoment: freezed == registerMoment
          ? _value.registerMoment
          : registerMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      expireMoment: freezed == expireMoment
          ? _value.expireMoment
          : expireMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenAddress: freezed == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      signatureExpire: freezed == signatureExpire
          ? _value.signatureExpire
          : signatureExpire // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateShieldResponseImplCopyWith<$Res>
    implements $CreateShieldResponseCopyWith<$Res> {
  factory _$$CreateShieldResponseImplCopyWith(_$CreateShieldResponseImpl value,
          $Res Function(_$CreateShieldResponseImpl) then) =
      __$$CreateShieldResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double tokenPrice,
      ShieldType type,
      String? totalFeeInInsuranceInWei,
      String? totalFeeValueInWei,
      String? tokenAmountInWei,
      String? registerMoment,
      String? expireMoment,
      String? walletAddress,
      String? tokenAddress,
      String? signature,
      String? signatureExpire});
}

/// @nodoc
class __$$CreateShieldResponseImplCopyWithImpl<$Res>
    extends _$CreateShieldResponseCopyWithImpl<$Res, _$CreateShieldResponseImpl>
    implements _$$CreateShieldResponseImplCopyWith<$Res> {
  __$$CreateShieldResponseImplCopyWithImpl(_$CreateShieldResponseImpl _value,
      $Res Function(_$CreateShieldResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateShieldResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenPrice = null,
    Object? type = null,
    Object? totalFeeInInsuranceInWei = freezed,
    Object? totalFeeValueInWei = freezed,
    Object? tokenAmountInWei = freezed,
    Object? registerMoment = freezed,
    Object? expireMoment = freezed,
    Object? walletAddress = freezed,
    Object? tokenAddress = freezed,
    Object? signature = freezed,
    Object? signatureExpire = freezed,
  }) {
    return _then(_$CreateShieldResponseImpl(
      tokenPrice: null == tokenPrice
          ? _value.tokenPrice
          : tokenPrice // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShieldType,
      totalFeeInInsuranceInWei: freezed == totalFeeInInsuranceInWei
          ? _value.totalFeeInInsuranceInWei
          : totalFeeInInsuranceInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFeeValueInWei: freezed == totalFeeValueInWei
          ? _value.totalFeeValueInWei
          : totalFeeValueInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenAmountInWei: freezed == tokenAmountInWei
          ? _value.tokenAmountInWei
          : tokenAmountInWei // ignore: cast_nullable_to_non_nullable
              as String?,
      registerMoment: freezed == registerMoment
          ? _value.registerMoment
          : registerMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      expireMoment: freezed == expireMoment
          ? _value.expireMoment
          : expireMoment // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenAddress: freezed == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      signatureExpire: freezed == signatureExpire
          ? _value.signatureExpire
          : signatureExpire // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateShieldResponseImpl implements _CreateShieldResponse {
  const _$CreateShieldResponseImpl(
      {required this.tokenPrice,
      required this.type,
      this.totalFeeInInsuranceInWei,
      this.totalFeeValueInWei,
      this.tokenAmountInWei,
      this.registerMoment,
      this.expireMoment,
      this.walletAddress,
      this.tokenAddress,
      this.signature,
      this.signatureExpire});

  factory _$CreateShieldResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateShieldResponseImplFromJson(json);

  @override
  final double tokenPrice;
  @override
  final ShieldType type;
  @override
  final String? totalFeeInInsuranceInWei;
  @override
  final String? totalFeeValueInWei;
  @override
  final String? tokenAmountInWei;
  @override
  final String? registerMoment;
  @override
  final String? expireMoment;
  @override
  final String? walletAddress;
  @override
  final String? tokenAddress;
  @override
  final String? signature;
  @override
  final String? signatureExpire;

  @override
  String toString() {
    return 'CreateShieldResponse(tokenPrice: $tokenPrice, type: $type, totalFeeInInsuranceInWei: $totalFeeInInsuranceInWei, totalFeeValueInWei: $totalFeeValueInWei, tokenAmountInWei: $tokenAmountInWei, registerMoment: $registerMoment, expireMoment: $expireMoment, walletAddress: $walletAddress, tokenAddress: $tokenAddress, signature: $signature, signatureExpire: $signatureExpire)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShieldResponseImpl &&
            (identical(other.tokenPrice, tokenPrice) ||
                other.tokenPrice == tokenPrice) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(
                    other.totalFeeInInsuranceInWei, totalFeeInInsuranceInWei) ||
                other.totalFeeInInsuranceInWei == totalFeeInInsuranceInWei) &&
            (identical(other.totalFeeValueInWei, totalFeeValueInWei) ||
                other.totalFeeValueInWei == totalFeeValueInWei) &&
            (identical(other.tokenAmountInWei, tokenAmountInWei) ||
                other.tokenAmountInWei == tokenAmountInWei) &&
            (identical(other.registerMoment, registerMoment) ||
                other.registerMoment == registerMoment) &&
            (identical(other.expireMoment, expireMoment) ||
                other.expireMoment == expireMoment) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.signatureExpire, signatureExpire) ||
                other.signatureExpire == signatureExpire));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tokenPrice,
      type,
      totalFeeInInsuranceInWei,
      totalFeeValueInWei,
      tokenAmountInWei,
      registerMoment,
      expireMoment,
      walletAddress,
      tokenAddress,
      signature,
      signatureExpire);

  /// Create a copy of CreateShieldResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateShieldResponseImplCopyWith<_$CreateShieldResponseImpl>
      get copyWith =>
          __$$CreateShieldResponseImplCopyWithImpl<_$CreateShieldResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateShieldResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateShieldResponse implements CreateShieldResponse {
  const factory _CreateShieldResponse(
      {required final double tokenPrice,
      required final ShieldType type,
      final String? totalFeeInInsuranceInWei,
      final String? totalFeeValueInWei,
      final String? tokenAmountInWei,
      final String? registerMoment,
      final String? expireMoment,
      final String? walletAddress,
      final String? tokenAddress,
      final String? signature,
      final String? signatureExpire}) = _$CreateShieldResponseImpl;

  factory _CreateShieldResponse.fromJson(Map<String, dynamic> json) =
      _$CreateShieldResponseImpl.fromJson;

  @override
  double get tokenPrice;
  @override
  ShieldType get type;
  @override
  String? get totalFeeInInsuranceInWei;
  @override
  String? get totalFeeValueInWei;
  @override
  String? get tokenAmountInWei;
  @override
  String? get registerMoment;
  @override
  String? get expireMoment;
  @override
  String? get walletAddress;
  @override
  String? get tokenAddress;
  @override
  String? get signature;
  @override
  String? get signatureExpire;

  /// Create a copy of CreateShieldResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateShieldResponseImplCopyWith<_$CreateShieldResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
