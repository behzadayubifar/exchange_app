import 'package:exchange/route_manager/route_names.dart';
import 'package:exchange/view/exchanges_screens/coin_screen.dart';
import 'package:exchange/view/exchanges_screens/crypto_screen.dart';
import 'package:exchange/view/exchanges_screens/currency_screen.dart';
import 'package:exchange/view/exchanges_screens/gold_screen.dart';
import 'package:exchange/view/home.dart';
import 'package:exchange/view/splash_screen.dart';
import 'package:get/get.dart';

class Pages {
  Pages._();

  static List<GetPage> pages = [
    GetPage(
      name: NamedRoute.initalRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: NamedRoute.home,
      page: () => const Home(),
    ),
    GetPage(
      name: NamedRoute.currencies,
      page: () => const CurrencyScreen(),
    ),
    GetPage(
      name: NamedRoute.coins,
      page: () => const CoinScreen(),
    ),
    GetPage(
      name: NamedRoute.cryptoes,
      page: () => const CryptoScreen(),
    ),
    GetPage(
      name: NamedRoute.gold,
      page: () => const GoldScreen(),
    ),
  ];
}
