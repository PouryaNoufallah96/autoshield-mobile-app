import 'package:auto_shield/core/services/shield_service/models.dart';
import 'package:flutter/material.dart';

class AddShieldPage extends StatelessWidget {
  const AddShieldPage({
    required this.stat,
    super.key,
  });

  final WalletStats stat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('data ${stat.symbol}'),
      appBar: AppBar(),
    );
  }
}
