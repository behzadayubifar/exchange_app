import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({super.key});

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
                    // btc
                    ExchangeWidget(
                      icon: Assets.icons.crypto.bitcoin.image(scale: 10),
                      title: "بیت کوین",
                      date: Db.bitcoin.date,
                      rate: Db.bitcoin.rate,
                      change: Db.bitcoin.change,
                    ),
                    // eth
                    ExchangeWidget(
                      title: "اتریوم",
                      date: Db.ethereum.date,
                      rate: Db.ethereum.rate,
                      icon: Assets.icons.crypto.ethereum.image(scale: 10),
                      change: Db.ethereum.change,
                    ),
                    // usdt
                    ExchangeWidget(
                      title: "تتر",
                      date: Db.tether.date,
                      rate: Db.tether.rate,
                      change: Db.tether.change,
                      icon: Assets.icons.crypto.tether.image(scale: 10),
                    ),
                    // doge
                    ExchangeWidget(
                      title: "دوج کوین",
                      date: Db.dogecoin.date,
                      rate: Db.dogecoin.rate,
                      change: Db.dogecoin.change,
                      icon: Assets.icons.crypto.dodge.image(scale: 10),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
