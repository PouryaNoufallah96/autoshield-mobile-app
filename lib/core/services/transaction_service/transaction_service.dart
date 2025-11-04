import 'package:auto_shield/contract_abi/contract_abi.dart';
import 'package:auto_shield/core/services/reown/reown.dart';
import 'package:decimal/decimal.dart' show Decimal;
import 'package:reown_appkit/reown_appkit.dart';

class TransactionService {
  TransactionService({
    required ReownService reownService,
    required Web3Client web3Client,
  })  : _reownService = reownService,
        _web3Client = web3Client;

  final ReownService _reownService;
  final Web3Client _web3Client;

  Future<void> loadAccountData() async {
    try {
      await _reownService.appKitModal.loadAccountData();
    } catch (_) {}
  }

  Decimal toHumanExact(BigInt raw, int decimals) {
    if (decimals <= 0) return Decimal.parse(raw.toString());

    final s = raw.toString().padLeft(decimals + 1, '0');
    final whole = s.substring(0, s.length - decimals);
    final frac = s.substring(s.length - decimals);

    return Decimal.parse('$whole.$frac');
  }

  double toHumanDouble(BigInt raw, int decimals, {int fractionDigits = 6}) {
    final d = toHumanExact(raw, decimals).toDouble();
    return fractionDigits >= 0
        ? double.parse(d.toStringAsFixed(fractionDigits))
        : d;
  }

  Future<bool> approve(BigInt? amount) async {
    final chainId = _reownService.appKitModal.selectedChain?.chainId;

    if (chainId == null) {
      return false;
    }

    final addressCheckSum = _address();
    final spenderAddress = AppContractAbi.appContract.address;

    final res = await _reownService.appKitModal.requestWriteContract(
      topic: _reownService.appKitModal.session?.topic,
      chainId: chainId,
      deployedContract: AppContractAbi.insuranceContract,
      functionName: AppContractAbi.approveFunction.name,
      transaction: Transaction(from: addressCheckSum),
      parameters: [
        spenderAddress,
        amount,
      ],
    );

    await _reownService.appKitModal.loadAccountData();

    return res is String && res.startsWith('0x');
  }

  Future<bool> payOrder(List<dynamic> params, String signature) async {
    try {
      final chainId = _reownService.appKitModal.selectedChain?.chainId;

      final addressCheckSum = _address();

      if (chainId == null) {
        return false;
      }

      final res = await _reownService.appKitModal.requestWriteContract(
        topic: _reownService.appKitModal.session?.topic,
        chainId: chainId,
        deployedContract: AppContractAbi.appContract,
        functionName: AppContractAbi.insureTokenFunction.name,
        transaction: Transaction(from: addressCheckSum),
        parameters: [params, hexToBytes(signature)],
      );

      await _reownService.appKitModal.loadAccountData();

      if (res is String && res.startsWith('0x')) {
        try {
          final succeed = await isSucceed(res);

          return succeed;
        } catch (_) {
          return false;
        }
      }

      return false;
    } catch (_) {
      return false;
    }
  }

  Future<bool> isSucceed(String tx) async {
    final r = await _web3Client.getTransactionReceipt(tx);
    return r?.status ?? false;
  }

  EthereumAddress? _address() {
    final chainId = _reownService.appKitModal.selectedChain!.chainId;

    final namespace = NamespaceUtils.getNamespaceFromChain(
      chainId,
    );

    final rawAddress = _reownService.appKitModal.session?.getAddress(namespace);

    if (rawAddress == null) {
      return null;
    }

    return EthereumAddress.fromHex(rawAddress);
  }
}
