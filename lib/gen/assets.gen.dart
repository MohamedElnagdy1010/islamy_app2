// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage frame3 = AssetGenImage('assets/Frame 3.png');
  static const AssetGenImage islami = AssetGenImage('assets/Islami.png');
  static const AssetGenImage mosque011 = AssetGenImage(
    'assets/Mosque-01 1.png',
  );
  static const AssetGenImage rectangle1 = AssetGenImage(
    'assets/Rectangle1.png',
  );
  static const AssetGenImage splashScreen = AssetGenImage(
    'assets/Splash Screen.png',
  );
  static const AssetGenImage bearish = AssetGenImage('assets/bearish.png');
  static const String icHadeth = 'assets/ic_hadeth.svg';
  static const String icQuran = 'assets/ic_quran.svg';
  static const String icRadio = 'assets/ic_radio.svg';
  static const String icSebha = 'assets/ic_sebha.svg';
  static const String icTime = 'assets/ic_time.svg';
  static const String imgSurNumberFrame = 'assets/img_sur_number_frame.svg';
  static const AssetGenImage islamylogo = AssetGenImage(
    'assets/islamylogo.png',
  );
  static const AssetGenImage kabba = AssetGenImage('assets/kabba.png');
  static const AssetGenImage quranbg = AssetGenImage('assets/quranbg.png');
  static const AssetGenImage radio = AssetGenImage('assets/radio.png');
  static const AssetGenImage reading = AssetGenImage('assets/reading.png');
  static const AssetGenImage welcome = AssetGenImage('assets/welcome.png');

  /// List of all assets
  static List<dynamic> get values => [
    frame3,
    islami,
    mosque011,
    rectangle1,
    splashScreen,
    bearish,
    icHadeth,
    icQuran,
    icRadio,
    icSebha,
    icTime,
    imgSurNumberFrame,
    islamylogo,
    kabba,
    quranbg,
    radio,
    reading,
    welcome,
  ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
