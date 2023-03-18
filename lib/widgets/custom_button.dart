import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9000a:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineWhiteA700:
        return ColorConstant.orange500;
      case ButtonVariant.OutlineWhiteA700_1:
        return ColorConstant.redA400;
      default:
        return ColorConstant.orange500;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9000a:
        return BorderSide(
          color: ColorConstant.black9000a,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700_1:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9000a:
        return ColorConstant.black9000a;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.SFProSemibold13:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.23,
          ),
        );
      case ButtonFontStyle.SFProBold17:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.24,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'SF Pro',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.24,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder14,
  RoundedBorder7,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll6,
}

enum ButtonVariant {
  FillOrange500,
  OutlineBlack9000a,
  OutlineWhiteA700,
  OutlineWhiteA700_1,
}

enum ButtonFontStyle {
  SFProSemibold17,
  SFProSemibold13,
  SFProBold17,
}
