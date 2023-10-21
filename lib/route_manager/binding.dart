import 'package:exchange/controller/money_controller.dart';
import 'package:get/get.dart';

class CurrencyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MoneyController());
  }
}
