import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

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
                    // bahar azadi
                    ExchangeWidget(
                      icon: Assets.icons.coinAndMetals.coin.image(scale: 10),
                      title: "سکه بهار آزادی",
                      date: Db.baharAzadi.date,
                      rate: Db.baharAzadi.rate,
                      change: Db.baharAzadi.change,
                    ),
                    // rob
                    ExchangeWidget(
                      title: "نیم سکه",
                      date: Db.nim.date,
                      rate: Db.nim.rate,
                      change: Db.nim.change,
                      icon: Assets.icons.coinAndMetals.coin.image(scale: 10),
                    ),
                    // nim
                    ExchangeWidget(
                      title: "ربع سکه",
                      date: Db.rob.date,
                      rate: Db.rob.rate,
                      change: Db.rob.change,
                      icon: Assets.icons.coinAndMetals.coin.image(scale: 10),
                    ),
                    // gerami
                    ExchangeWidget(
                      title: "سکه گرمی",
                      date: Db.gerami.date,
                      rate: Db.gerami.rate,
                      change: Db.gerami.change,
                      icon: Assets.icons.coinAndMetals.coin.image(scale: 10),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
