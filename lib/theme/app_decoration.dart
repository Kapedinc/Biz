import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        color: ColorConstant.gray100Cc,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -0.5,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOrange500 => BoxDecoration(
        color: ColorConstant.orange500,
      );
  static BoxDecoration get fillLightblueA700 => BoxDecoration(
        color: ColorConstant.lightBlueA700,
      );
  static BoxDecoration get outlineYellow9000c => BoxDecoration(
        color: ColorConstant.lime50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.yellow9000c,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray6001e => BoxDecoration(
        color: ColorConstant.gray6001e,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillRedA400 => BoxDecoration(
        color: ColorConstant.redA400,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: ColorConstant.orange50,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder48 = BorderRadius.circular(
    getHorizontalSize(
      48,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12,
    ),
  );

  static BorderRadius circleBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18,
    ),
  );
}
