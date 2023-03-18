import '../dashboard_page/widgets/content_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/content_item_model.dart';
import 'models/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/app_bar/appbar_image.dart';
import 'package:vashon_s_application20/widgets/app_bar/appbar_stack.dart';
import 'package:vashon_s_application20/widgets/app_bar/custom_app_bar.dart';
import 'package:vashon_s_application20/widgets/custom_button.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(top: 3, bottom: 3),
                                    decoration: AppDecoration.fillGray100,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(36),
                                              leadingWidth: 40,
                                              leading: AppbarImage(
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  imagePath:
                                                      ImageConstant.imgContent,
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 5,
                                                      bottom: 6)),
                                              actions: [
                                                AppbarStack(
                                                    margin: getMargin(
                                                        left: 16, right: 16),
                                                    onTap: onTapStackinitials)
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 8, bottom: 3),
                                              child: Text("lbl_dashboard".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtSFProBold34))
                                        ]))),
                            Container(
                                margin: getMargin(left: 16, top: 8, right: 16),
                                padding: getPadding(
                                    left: 16, top: 14, right: 16, bottom: 14),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomIconButton(
                                          height: 48,
                                          width: 48,
                                          margin: getMargin(top: 1, bottom: 21),
                                          variant: IconButtonVariant
                                              .FillLightblueA700,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgIconbackground)),
                                      Padding(
                                          padding: getPadding(left: 16, top: 1),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_apply_now".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        AppStyle.txtHeadline),
                                                Container(
                                                    width:
                                                        getHorizontalSize(208),
                                                    margin: getMargin(top: 7),
                                                    child: Text(
                                                        "msg_our_new_exclusive"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtSFProRegular15))
                                              ])),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgContent21x15,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(15),
                                          margin: getMargin(
                                              left: 33,
                                              top: 2,
                                              right: 4,
                                              bottom: 46))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 32, top: 24),
                                    child: Text("lbl_accounts".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProSemibold20))),
                            Container(
                                margin: getMargin(left: 16, top: 11, right: 16),
                                padding: getPadding(top: 4, bottom: 4),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 12, right: 14),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant: IconButtonVariant
                                                        .FillOrange500,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconsbackground)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 1,
                                                        bottom: 1),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_checking".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtHeadline),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 6),
                                                              child: Text(
                                                                  "lbl_344_271_986"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSFProRegular15Gray80099))
                                                        ])),
                                                Spacer(),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 2, bottom: 24),
                                                    child: Text(
                                                        "lbl_2_753_50".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtHeadline)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgContent16x8,
                                                    height: getVerticalSize(16),
                                                    width: getHorizontalSize(8),
                                                    margin: getMargin(
                                                        left: 12,
                                                        top: 4,
                                                        bottom: 27))
                                              ])),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(top: 11),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.gray8005b)))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 32, top: 25),
                                    child: Text("lbl_summary".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProSemibold20))),
                            Container(
                                margin: getMargin(left: 16, top: 10, right: 16),
                                padding: getPadding(
                                    left: 15, top: 16, right: 15, bottom: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 1, right: 1),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_expenses"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProSemibold13),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8),
                                                              child: Text(
                                                                  "lbl_1_638_50"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSFProBold22))
                                                        ])),
                                                Container(
                                                    margin:
                                                        getMargin(bottom: 20),
                                                    padding: getPadding(
                                                        top: 2, bottom: 2),
                                                    decoration: AppDecoration
                                                        .fillGray6001e
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder8),
                                                    child: Row(children: [
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  28),
                                                          width:
                                                              getHorizontalSize(
                                                                  32),
                                                          text: "lbl_d".tr,
                                                          variant: ButtonVariant
                                                              .OutlineBlack9000a,
                                                          shape: ButtonShape
                                                              .RoundedBorder7,
                                                          padding: ButtonPadding
                                                              .PaddingAll6,
                                                          fontStyle: ButtonFontStyle
                                                              .SFProSemibold13),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  24),
                                                          margin: getMargin(
                                                              left: 11,
                                                              top: 6,
                                                              bottom: 5),
                                                          child: Row(children: [
                                                            Text("lbl_w".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProSemibold13Black900),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSeparator,
                                                                height:
                                                                    getVerticalSize(
                                                                        16),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            10))
                                                          ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  23),
                                                          margin: getMargin(
                                                              left: 11,
                                                              top: 6,
                                                              bottom: 5),
                                                          child: Row(children: [
                                                            Text("lbl_m".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProSemibold13Black900),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSeparator,
                                                                height:
                                                                    getVerticalSize(
                                                                        16),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            10))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 6,
                                                              bottom: 5),
                                                          child: Text(
                                                              "lbl_y".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProSemibold13Black900))
                                                    ]))
                                              ])),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgChart,
                                          height: getVerticalSize(168),
                                          width: getHorizontalSize(328),
                                          margin: getMargin(top: 23))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 32, top: 23),
                                    child: Text("msg_recent_transactions".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProSemibold20))),
                            Container(
                                margin: getMargin(left: 16, top: 12, right: 16),
                                padding: getPadding(top: 16, bottom: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder18),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: controller.dashboardModelObj
                                        .value.contentItemList.length,
                                    itemBuilder: (context, index) {
                                      ContentItemModel model = controller
                                          .dashboardModelObj
                                          .value
                                          .contentItemList[index];
                                      return ContentItemWidget(model);
                                    })))
                          ])
                    ]))));
  }

  onTapStackinitials() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
