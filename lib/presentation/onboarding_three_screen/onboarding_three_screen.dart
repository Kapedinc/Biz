import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';

class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 31, top: 96, right: 30),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200),
                                        width: getHorizontalSize(224),
                                        margin: getMargin(right: 40),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .lightBlueA700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder48),
                                                      child: Container(
                                                          height: getSize(200),
                                                          width: getSize(200),
                                                          padding: getPadding(
                                                              left: 11,
                                                              right: 11),
                                                          decoration: AppDecoration
                                                              .fillLightblueA700
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder48),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContent102x81,
                                                                height:
                                                                    getVerticalSize(
                                                                        102),
                                                                width:
                                                                    getHorizontalSize(
                                                                        81),
                                                                alignment: Alignment
                                                                    .bottomRight)
                                                          ])))),
                                              CustomButton(
                                                  height: getVerticalSize(38),
                                                  width: getHorizontalSize(131),
                                                  text: "lbl_innovative"
                                                      .tr
                                                      .toUpperCase(),
                                                  margin: getMargin(top: 12),
                                                  variant: ButtonVariant
                                                      .OutlineWhiteA700,
                                                  padding:
                                                      ButtonPadding.PaddingAll6,
                                                  fontStyle: ButtonFontStyle
                                                      .SFProBold17,
                                                  alignment: Alignment.topRight)
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 58),
                                    child: Text(
                                        "msg_lightning_fast_payments".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold22)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_make_transfers_to".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtBody))
                              ])),
                      Spacer(),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgPaginationLightBlueA700,
                                        height: getVerticalSize(8),
                                        width: getHorizontalSize(44)),
                                    CustomButton(
                                        height: getVerticalSize(54),
                                        text: "lbl_get_started".tr,
                                        margin: getMargin(top: 24),
                                        onTap: onTapGetstarted),
                                    Padding(
                                        padding:
                                            getPadding(top: 16, bottom: 34),
                                        child: Text("lbl_demo_mode".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtHeadlineOrange500))
                                  ])))
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
