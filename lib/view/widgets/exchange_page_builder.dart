import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/money_controller.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class ExchangePageBuilder extends StatelessWidget {
  ExchangePageBuilder({
    required this.exchangesList,
    super.key,
    required this.title,
    icon,
  }) : icon = icon ?? Assets.icons.coinAndMetals.coin.image(scale: 6);

  final MoneyController _moneyController = Get.find<MoneyController>();
  final List<ExchangeWidget> exchangesList;
  final String title;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => RefreshIndicator(
          onRefresh: () async => await _moneyController.fetchList(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(title),
              centerTitle: true,
              leading: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                  onPressed: () => _moneyController.fetchList(),
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            body: AppController.isLoading.value
                ? const Center(
                    child: SpinKitDualRing(color: Colors.purpleAccent))
                : ListView(
                    children: exchangesList,
                  ),
          ),
        ),
      ),
    );
  }
}
