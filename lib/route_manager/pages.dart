import 'package:exchange/route_manager/binding.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:exchange/view/currency_screen.dart';
import 'package:exchange/view/home.dart';
import 'package:get/get.dart';

class Pages {
  Pages._();

  static List<GetPage> pages = [
    GetPage(
      name: NamedRoute.home,
      page: () => const Home(),
    ),
    GetPage(
        name: NamedRoute.currencies,
        page: () => const CurrencyScreen(),
        binding: CurrencyBinding()),
  ];
}
