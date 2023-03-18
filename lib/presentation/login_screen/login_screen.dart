import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              decoration: AppDecoration.fillGray100,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgModal,
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(390)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                getPadding(top: 5, right: 16),
                                            child: Text("lbl_cancel".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtHeadlineOrange500))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 21, bottom: 4),
                                        child: Text("lbl_login".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProBold34))
                                  ]))),
                      Container(
                          margin: getMargin(left: 16, top: 8, right: 16),
                          padding: getPadding(top: 11, bottom: 11),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 15, top: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_john_smith2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtBodyBlack900),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.gray8005b))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 16, top: 11),
                                    child: Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtBodyGray8004c))
                              ])),
                      Spacer(),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              decoration: AppDecoration.outlineBlack9004c,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray8005b),
                                    CustomButton(
                                        height: getVerticalSize(54),
                                        text: "lbl_login".tr,
                                        margin: getMargin(
                                            left: 16, top: 15, right: 16),
                                        onTap: onTapLogin),
                                    Padding(
                                        padding:
                                            getPadding(top: 17, bottom: 49),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtHeadlineOrange500))
                                  ])))
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.dashboardContainerScreen);
  }
}
