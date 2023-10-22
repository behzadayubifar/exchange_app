import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:exchange/view/widgets/home/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // BG
        Assets.images.moneyBg.image(
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        // Content
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // name of app
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: 100,
                    child: Assets.images.coinDolar.image(
                      width: MediaQuery.of(context).size.width / 3,
                    )),
                const Text("چند و چون !",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 218, 230, 5))),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height / 4,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SectionWidget(
                        title: "ارز",
                        image: Assets.images.dolar.image(scale: 6),
                        routeName: NamedRoute.currencies,
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      SectionWidget(
                        title: "سکه",
                        image: Assets.icons.coinAndMetals.coin.image(scale: 6),
                        routeName: NamedRoute.coins,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height / 4,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SectionWidget(
                        title: "طلا",
                        image: Assets.icons.coinAndMetals.gold.image(scale: 6),
                        routeName: NamedRoute.gold,
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      SectionWidget(
                        title: "کریپتو",
                        image: Assets.icons.crypto.bitcoin.image(scale: 6),
                        routeName: NamedRoute.cryptoes,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
