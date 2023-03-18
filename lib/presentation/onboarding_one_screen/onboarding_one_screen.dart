import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
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
                          padding: getPadding(left: 24, top: 96, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(200),
                                        width: getHorizontalSize(224),
                                        margin: getMargin(right: 46),
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
                                                          .orange500,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder48),
                                                      child: Container(
                                                          height: getSize(200),
                                                          width: getSize(200),
                                                          padding: getPadding(
                                                              top: 48,
                                                              bottom: 48),
                                                          decoration: AppDecoration
                                                              .fillOrange500
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder48),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgIconbackground,
                                                                height:
                                                                    getVerticalSize(
                                                                        102),
                                                                width:
                                                                    getHorizontalSize(
                                                                        72),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])))),
                                              CustomButton(
                                                  height: getVerticalSize(38),
                                                  width: getHorizontalSize(107),
                                                  text: "lbl_reliable"
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
                                    child: Text("msg_fully_innovative".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProBold22)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_we_are_always_looking".tr,
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
                                    Container(
                                        height: getVerticalSize(8),
                                        child: SmoothIndicator(
                                            offset: 0,
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 10,
                                                activeDotColor:
                                                    ColorConstant.orange500,
                                                dotColor:
                                                    ColorConstant.lightBlueA700,
                                                dotHeight: getVerticalSize(8),
                                                dotWidth:
                                                    getHorizontalSize(8)))),
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
    Get.toNamed(AppRoutes.onboardingTwoScreen);
  }
}
