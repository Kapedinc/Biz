import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillLightblueA700:
        return ColorConstant.lightBlueA700;
      case IconButtonVariant.FillOrange500:
        return ColorConstant.orange500;
      case IconButtonVariant.FillGray600:
        return ColorConstant.gray600;
      case IconButtonVariant.FillRed500:
        return ColorConstant.red500;
      case IconButtonVariant.FillIndigo400:
        return ColorConstant.indigo400;
      case IconButtonVariant.FillPurple300:
        return ColorConstant.purple300;
      case IconButtonVariant.FillBluegray400:
        return ColorConstant.blueGray400;
      case IconButtonVariant.FillLightblue400:
        return ColorConstant.lightBlue400;
      case IconButtonVariant.FillRedA400:
        return ColorConstant.redA400;
      case IconButtonVariant.FillAmberA400:
        return ColorConstant.amberA400;
      case IconButtonVariant.OutlineLightblueA7003d:
        return ColorConstant.orange500;
      default:
        return ColorConstant.green500;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineLightblueA7003d:
        return [
          BoxShadow(
            color: ColorConstant.lightBlueA7003d,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              12,
            ),
          )
        ];
      case IconButtonVariant.FillGreen500:
      case IconButtonVariant.FillLightblueA700:
      case IconButtonVariant.FillOrange500:
      case IconButtonVariant.FillGray600:
      case IconButtonVariant.FillRed500:
      case IconButtonVariant.FillIndigo400:
      case IconButtonVariant.FillPurple300:
      case IconButtonVariant.FillBluegray400:
      case IconButtonVariant.FillLightblue400:
      case IconButtonVariant.FillRedA400:
      case IconButtonVariant.FillAmberA400:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
  CircleBorder32,
  RoundedBorder16,
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll6,
  PaddingAll16,
}

enum IconButtonVariant {
  FillGreen500,
  FillLightblueA700,
  FillOrange500,
  FillGray600,
  FillRed500,
  FillIndigo400,
  FillPurple300,
  FillBluegray400,
  FillLightblue400,
  FillRedA400,
  FillAmberA400,
  OutlineLightblueA7003d,
}
