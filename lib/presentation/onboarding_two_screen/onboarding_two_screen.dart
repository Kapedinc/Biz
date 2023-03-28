import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
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
                          padding: getPadding(left: 16, top: 96, right: 16),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200),
                                        width: getHorizontalSize(224),
                                        margin: getMargin(right: 55),
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
                                                      color:
                                                          ColorConstant.redA400,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder48),
                                                      child: Container(
                                                          height: getSize(200),
                                                          width: getSize(200),
                                                          padding: getPadding(
                                                              left: 49,
                                                              top: 59,
                                                              right: 49,
                                                              bottom: 59),
                                                          decoration: AppDecoration
                                                              .fillRedA400
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder48),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContent80x100,
                                                                height:
                                                                    getVerticalSize(
                                                                        80),
                                                                width:
                                                                    getHorizontalSize(
                                                                        100),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])))),
                                              CustomButton(
                                                  height: getVerticalSize(38),
                                                  width: getHorizontalSize(94),
                                                  text: "lbl_secure"
                                                      .tr
                                                      .toUpperCase(),
                                                  margin: getMargin(top: 12),
                                                  variant: ButtonVariant
                                                      .OutlineWhiteA700_1,
                                                  padding:
                                                      ButtonPadding.PaddingAll6,
                                                  fontStyle: ButtonFontStyle
                                                      .SFProBold17,
                                                  alignment: Alignment.topRight)
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 56),
                                    child: Text("msg_all_your_cards_in".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold22)),
                                Container(
                                    width: getHorizontalSize(358),
                                    margin: getMargin(top: 16),
                                    child: Text("msg_view_and_manage".tr,
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
                                        svgPath: ImageConstant.imgPagination,
                                        height: getVerticalSize(8),
                                        width: getHorizontalSize(44)),
                                    CustomButton(
                                        height: getVerticalSize(54),
                                        text: "lbl_next".tr,
                                        margin: getMargin(top: 24),
                                        onTap: onTapNext),
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

  onTapNext() {
    Get.toNamed(AppRoutes.onboardingThreeScreen);
  }
}
