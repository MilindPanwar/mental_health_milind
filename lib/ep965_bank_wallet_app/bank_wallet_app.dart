import 'package:flutter/material.dart';

import 'src/ui/bank_wallet_static_page.dart';

class BankWalletApp extends StatelessWidget {
  const BankWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BankWalletStaticPage(),
    );
  }
}