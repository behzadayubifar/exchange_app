import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/view/widgets/exchange_page_builder.dart';
import 'package:flutter/material.dart';

class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExchangePageBuilder(
      exchangesList: Db.coinsWidgets,
      title: 'سکه',
    );
  }
}
