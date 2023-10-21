import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

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
                    // 18 ayar
                    ExchangeWidget(
                      icon: Assets.icons.coinAndMetals.gold.image(scale: 10),
                      title: "طلای 18 عیار",
                      date: Db.gold18.date,
                      rate: Db.gold18.rate,
                      change: Db.gold18.change,
                    ),
                    // mesghal
                    ExchangeWidget(
                      title: "مثقال طلای آبشده",
                      date: Db.ethereum.date,
                      rate: Db.ethereum.rate,
                      change: Db.ethereum.change,
                      icon: Assets.icons.coinAndMetals.gold.image(scale: 10),
                    ),
                    // world ounce
                    ExchangeWidget(
                      title: "اونس جهانی طلا",
                      date: Db.worldOunce.date,
                      rate: Db.worldOunce.rate,
                      change: Db.worldOunce.change,
                      icon: Assets.icons.coinAndMetals.gold.image(scale: 10),
                    ),
                    // ounce
                    ExchangeWidget(
                      title: "اونس طلا",
                      date: Db.ounce.date,
                      rate: Db.ounce.rate,
                      change: Db.ounce.change,
                      icon: Assets.icons.coinAndMetals.gold.image(scale: 10),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
