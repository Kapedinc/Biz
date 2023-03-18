import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.orange500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder18,
          ),
          child: Container(
            height: getSize(
              36,
            ),
            width: getSize(
              36,
            ),
            decoration: AppDecoration.fillOrange500.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder18,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 9,
                      top: 8,
                      right: 8,
                      bottom: 9,
                    ),
                    child: Text(
                      "lbl_js".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProSemibold15,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: getSize(
                      10,
                    ),
                    width: getSize(
                      10,
                    ),
                    margin: getMargin(
                      left: 26,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.orange500,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray100,
                        width: getHorizontalSize(
                          2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
