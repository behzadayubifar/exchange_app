import 'dart:developer';

import 'package:exchange/constants/api_constants.dart';
import 'package:exchange/controller/app_controller.dart';
import 'package:exchange/controller/fetched_data.dart';
import 'package:exchange/data/models.dart';
import 'package:exchange/services/dio_service.dart';
import 'package:get/get.dart';

class MoneyController extends GetxController {
  RxList<Currency> moneyList = RxList.empty();

  @override
  void onInit() {
    super.onInit();
    fetchList();
  }

  fetchList() async {
    AppController.isLoading.value = true;
    var response = await DioService().getMethod(ApiConstants.baseUrl);
    if (response.statusCode == 200) {
      moneyList.clear();
      log(response.toString());
      (response.data as Map<String, dynamic>).forEach((key, value) {
        if (value is Map<String, dynamic>) {
          moneyList.add(Currency(
            name: key,
            rate: value['value'],
            change: value['change'],
            date: (value['date']).toString(),
          ));
        }
      });

      // currrencies
      Db.dolar = findCurrencyByName("usd");
      Db.euro = findCurrencyByName("eur");
      Db.pound = findCurrencyByName("gbp");
      Db.dirham = findCurrencyByName("aed");

      // cryptoes
      Db.bitcoin = findCurrencyByName("btc");
      Db.ethereum = findCurrencyByName("eth");
      Db.tether = findCurrencyByName("usdt");
      Db.dogecoin = findCurrencyByName("doge");

      // coins
      Db.baharAzadi = findCurrencyByName("bahar");
      Db.rob = findCurrencyByName("rob");
      Db.nim = findCurrencyByName("nim");
      Db.gerami = findCurrencyByName("gerami");

      // gold
      Db.ounce = findCurrencyByName("xau");
      Db.mesghal = findCurrencyByName("abshodeh");
      Db.worldOunce = findCurrencyByName("usd_xau");
      Db.gold18 = findCurrencyByName("18ayar");
    }
    AppController.isLoading.value = false;
  }

  Currency findCurrencyByName(String name) => moneyList.firstWhere(
        (element) => element.name == name,
      );
}
