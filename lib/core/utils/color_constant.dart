import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red500 = fromHex('#ff3b30');

  static Color lightBlue400 = fromHex('#32ade6');

  static Color green500 = fromHex('#34c759');

  static Color amberA400 = fromHex('#ffcc00');

  static Color black900 = fromHex('#000000');

  static Color gray100Cc = fromHex('#ccf7f7f7');

  static Color lightBlueA700 = fromHex('#007aff');

  static Color redA400 = fromHex('#ff2d55');

  static Color purple300 = fromHex('#af52de');

  static Color gray8005b = fromHex('#5b3c3c43');

  static Color gray600 = fromHex('#a2845e');

  static Color black9004c = fromHex('#4c000000');

  static Color black9000a = fromHex('#0a000000');

  static Color gray500 = fromHex('#999999');

  static Color blueGray400 = fromHex('#8e8e93');

  static Color lime800 = fromHex('#ae7029');

  static Color yellow9000c = fromHex('#0cd98c33');

  static Color black9000f = fromHex('#0f000000');

  static Color orange500 = fromHex('#ff9500');

  static Color gray80099 = fromHex('#993c3c43');

  static Color gray100 = fromHex('#f2f2f7');

  static Color lightBlueA7003d = fromHex('#3d007aff');

  static Color indigo400 = fromHex('#5856d6');

  static Color orange50 = fromHex('#f7e8d6');

  static Color bluegray400 = fromHex('#888888');

  static Color lime50 = fromHex('#fbf4eb');

  static Color gray6001e = fromHex('#1e767680');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray8004c = fromHex('#4c3c3c43');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
