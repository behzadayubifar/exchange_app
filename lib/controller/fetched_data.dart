import 'package:exchange/data/models.dart';
import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/view/widgets/currencies_widgets/exchange_widget.dart';

class Db {
  Db._();

  // Currency

  static late Currency dolar;
  static late Currency euro;
  static late Currency pound;
  static late Currency dirham;

  // Coin

  static late Currency baharAzadi;
  static late Currency rob;
  static late Currency nim;
  static late Currency gerami;

  // Gold

  static late Currency ounce;
  static late Currency mesghal;
  static late Currency worldOunce;
  static late Currency gold18;

  // Crypto

  static late Currency bitcoin;
  static late Currency ethereum;
  static late Currency tether;
  static late Currency dogecoin;

  // data to widget lists

  static List<ExchangeWidget> currenciesWidgets = [
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
  ];
  static List<ExchangeWidget> cryptoesWidgets = [
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
  ];
  static List<ExchangeWidget> coinsWidgets = [
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
  ];
  static List<ExchangeWidget> goldsWidgets = [
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
  ];
}
