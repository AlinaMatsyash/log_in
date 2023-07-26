/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/download.svg
  SvgGenImage get download => const SvgGenImage('assets/icons/download.svg');

  /// File path: assets/icons/favorite.svg
  SvgGenImage get favorite => const SvgGenImage('assets/icons/favorite.svg');

  /// File path: assets/icons/login.svg
  SvgGenImage get login => const SvgGenImage('assets/icons/login.svg');

  /// File path: assets/icons/shopping_cart.svg
  SvgGenImage get shoppingCart =>
      const SvgGenImage('assets/icons/shopping_cart.svg');

  /// File path: assets/icons/telegram_logo.svg
  SvgGenImage get telegramLogo =>
      const SvgGenImage('assets/icons/telegram_logo.svg');

  /// File path: assets/icons/vk_logo.svg
  SvgGenImage get vkLogo => const SvgGenImage('assets/icons/vk_logo.svg');

  /// File path: assets/icons/youtube_logo.svg
  SvgGenImage get youtubeLogo =>
      const SvgGenImage('assets/icons/youtube_logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        download,
        favorite,
        login,
        shoppingCart,
        telegramLogo,
        vkLogo,
        youtubeLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background_desktop.png
  AssetGenImage get backgroundDesktop =>
      const AssetGenImage('assets/images/background_desktop.png');

  /// File path: assets/images/background_phone.png
  AssetGenImage get backgroundPhone =>
      const AssetGenImage('assets/images/background_phone.png');

  /// File path: assets/images/background_web.png
  AssetGenImage get backgroundWeb =>
      const AssetGenImage('assets/images/background_web.png');

  /// File path: assets/images/footer_logo_fasie.png
  AssetGenImage get footerLogoFasie =>
      const AssetGenImage('assets/images/footer_logo_fasie.png');

  /// File path: assets/images/google_color.png
  AssetGenImage get googleColor =>
      const AssetGenImage('assets/images/google_color.png');

  /// File path: assets/images/logo_web.png
  AssetGenImage get logoWeb =>
      const AssetGenImage('assets/images/logo_web.png');

  /// File path: assets/images/logo_windows.png
  AssetGenImage get logoWindows =>
      const AssetGenImage('assets/images/logo_windows.png');

  /// File path: assets/images/vk_color.png
  AssetGenImage get vkColor =>
      const AssetGenImage('assets/images/vk_color.png');

  /// File path: assets/images/yandex_color.png
  AssetGenImage get yandexColor =>
      const AssetGenImage('assets/images/yandex_color.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        backgroundDesktop,
        backgroundPhone,
        backgroundWeb,
        footerLogoFasie,
        googleColor,
        logoWeb,
        logoWindows,
        vkColor,
        yandexColor
      ];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
