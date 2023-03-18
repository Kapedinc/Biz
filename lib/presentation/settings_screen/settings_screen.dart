import '../settings_screen/widgets/content1_item_widget.dart';
import '../settings_screen/widgets/list1_item_widget.dart';
import '../settings_screen/widgets/listiconsbackground2_item_widget.dart';
import 'controller/settings_controller.dart';
import 'models/content1_item_model.dart';
import 'models/list1_item_model.dart';
import 'models/listiconsbackground2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';
import 'package:vashon_s_application20/widgets/custom_switch.dart';

class SettingsScreen extends GetWidget<SettingsController> {
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgModal,
                    height: getVerticalSize(
                      68,
                    ),
                    width: getHorizontalSize(
                      390,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 13,
                      right: 26,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_button".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyLightblueA700,
                        ),
                        Text(
                          "lbl_done".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadlineOrange500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 32,
                    top: 67,
                  ),
                  child: Text(
                    "lbl_general".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProSemibold20,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 12,
                  right: 16,
                ),
                padding: getPadding(
                  top: 14,
                  bottom: 14,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: controller
                        .settingsModelObj.value.content1ItemList.length,
                    itemBuilder: (context, index) {
                      Content1ItemModel model = controller
                          .settingsModelObj.value.content1ItemList[index];
                      return Content1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 32,
                    top: 25,
                  ),
                  child: Text(
                    "lbl_application".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProSemibold20,
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 10,
                  right: 16,
                ),
                padding: getPadding(
                  top: 12,
                  bottom: 12,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 16,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.settingsModelObj.value
                              .listiconsbackground2ItemList.length,
                          itemBuilder: (context, index) {
                            Listiconsbackground2ItemModel model = controller
                                .settingsModelObj
                                .value
                                .listiconsbackground2ItemList[index];
                            return Listiconsbackground2ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                  height: 48,
                                  width: 48,
                                  margin: getMargin(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  variant: IconButtonVariant.FillPurple300,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconsbackground27,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_appearance".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtHeadlineBlack900,
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        226,
                                      ),
                                      margin: getMargin(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "msg_customize_the_appearance".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProRegular15,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContent16x8,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  margin: getMargin(
                                    top: 22,
                                    bottom: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.gray8005b,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 48,
                            width: 48,
                            margin: getMargin(
                              top: 12,
                              bottom: 12,
                            ),
                            variant: IconButtonVariant.FillBluegray400,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconsbackground28,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_haptic_feedback".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadlineBlack900,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    195,
                                  ),
                                  margin: getMargin(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "msg_turn_the_haptic".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtBody,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Obx(
                            () => CustomSwitch(
                              margin: getMargin(
                                left: 16,
                                top: 20,
                                bottom: 20,
                              ),
                              value: controller.isSelectedSwitch.value,
                              onChanged: (value) {
                                controller.isSelectedSwitch.value = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  "lbl_legal".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProSemibold20,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 12,
                  right: 16,
                ),
                padding: getPadding(
                  top: 16,
                  bottom: 16,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 16,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller
                              .settingsModelObj.value.list1ItemList.length,
                          itemBuilder: (context, index) {
                            List1ItemModel model = controller
                                .settingsModelObj.value.list1ItemList[index];
                            return List1ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                        right: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 48,
                            width: 48,
                            margin: getMargin(
                              top: 10,
                              bottom: 10,
                            ),
                            variant: IconButtonVariant.FillRed500,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconsbackground19,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_close_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadlineBlack900,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "msg_if_you_wish_you".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSFProRegular15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgContent16x8,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 16,
                              top: 22,
                              bottom: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
