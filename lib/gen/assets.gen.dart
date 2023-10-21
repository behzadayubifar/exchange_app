/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsCoinAndMetalsGen get coinAndMetals =>
      const $AssetsIconsCoinAndMetalsGen();
  $AssetsIconsCryptoGen get crypto => const $AssetsIconsCryptoGen();
  $AssetsIconsFlagsGen get flags => const $AssetsIconsFlagsGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/dolar.png
  AssetGenImage get dolar => const AssetGenImage('assets/images/dolar.png');

  /// List of all assets
  List<AssetGenImage> get values => [dolar];
}

class $AssetsIconsCoinAndMetalsGen {
  const $AssetsIconsCoinAndMetalsGen();

  /// File path: assets/icons/coin_and_metals/coin.png
  AssetGenImage get coin =>
      const AssetGenImage('assets/icons/coin_and_metals/coin.png');

  /// File path: assets/icons/coin_and_metals/gold coin.png
  AssetGenImage get goldCoin =>
      const AssetGenImage('assets/icons/coin_and_metals/gold coin.png');

  /// File path: assets/icons/coin_and_metals/gold.png
  AssetGenImage get gold =>
      const AssetGenImage('assets/icons/coin_and_metals/gold.png');

  /// File path: assets/icons/coin_and_metals/monetary_gold_bar.png
  AssetGenImage get monetaryGoldBar =>
      const AssetGenImage('assets/icons/coin_and_metals/monetary_gold_bar.png');

  /// List of all assets
  List<AssetGenImage> get values => [coin, goldCoin, gold, monetaryGoldBar];
}

class $AssetsIconsCryptoGen {
  const $AssetsIconsCryptoGen();

  /// File path: assets/icons/crypto/Bitcoin.png
  AssetGenImage get bitcoin =>
      const AssetGenImage('assets/icons/crypto/Bitcoin.png');

  /// File path: assets/icons/crypto/Ethereum.png
  AssetGenImage get ethereum =>
      const AssetGenImage('assets/icons/crypto/Ethereum.png');

  /// File path: assets/icons/crypto/bitcoin1.png
  AssetGenImage get bitcoin1 =>
      const AssetGenImage('assets/icons/crypto/bitcoin1.png');

  /// File path: assets/icons/crypto/dodge.png
  AssetGenImage get dodge =>
      const AssetGenImage('assets/icons/crypto/dodge.png');

  /// File path: assets/icons/crypto/etherium.png
  AssetGenImage get etherium =>
      const AssetGenImage('assets/icons/crypto/etherium.png');

  /// File path: assets/icons/crypto/tether.png
  AssetGenImage get tether =>
      const AssetGenImage('assets/icons/crypto/tether.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bitcoin, ethereum, bitcoin1, dodge, etherium, tether];
}

class $AssetsIconsFlagsGen {
  const $AssetsIconsFlagsGen();

  /// File path: assets/icons/flags/britain.png
  AssetGenImage get britain =>
      const AssetGenImage('assets/icons/flags/britain.png');

  /// File path: assets/icons/flags/euro.png
  AssetGenImage get euro => const AssetGenImage('assets/icons/flags/euro.png');

  /// File path: assets/icons/flags/uae.png
  AssetGenImage get uae => const AssetGenImage('assets/icons/flags/uae.png');

  /// File path: assets/icons/flags/usa.png
  AssetGenImage get usa => const AssetGenImage('assets/icons/flags/usa.png');

  /// List of all assets
  List<AssetGenImage> get values => [britain, euro, uae, usa];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
