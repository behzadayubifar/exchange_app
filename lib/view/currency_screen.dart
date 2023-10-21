import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppController.isLoading.value
          ? const SpinKitDualRing(color: Colors.purpleAccent)
          : RefreshIndicator(
              onRefresh: () async {},
              child: Scaffold(
                body: ListView(
                  children: [
                    // dolar
                    ExchangeWidget(
                      icon: Assets.icons.flags.usa.image(scale: 10),
                      title: "دلار آمریکا",
                      date: Db.dolar.date,
                      rate: Db.dolar.rate,
                      change: Db.dolar.change,
                    ),
                    // euro
                    ExchangeWidget(
                      title: "یورو",
                      date: Db.euro.date,
                      rate: Db.euro.rate,
                      change: Db.euro.change,
                      icon: Assets.icons.flags.euro.image(scale: 10),
                    ),
                    // pound
                    ExchangeWidget(
                      title: "پوند انگلیس",
                      date: Db.pound.date,
                      rate: Db.pound.rate,
                      change: Db.pound.change,
                      icon: Assets.icons.flags.britain.image(scale: 10),
                    ),
                    // dirham (UAE)
                    ExchangeWidget(
                      title: "درهم امارات",
                      date: Db.dirham.date,
                      rate: Db.dirham.rate,
                      change: Db.dirham.change,
                      icon: Assets.icons.flags.uae.image(scale: 10),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
