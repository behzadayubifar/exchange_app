import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/view/widgets/exchange_page_builder.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExchangePageBuilder(
      exchangesList: Db.currenciesWidgets,
      title: 'ارز',
    );
  }
}
