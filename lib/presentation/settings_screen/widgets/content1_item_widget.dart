import '../controller/settings_controller.dart';
import '../models/content1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Content1ItemWidget extends StatelessWidget {
  Content1ItemWidget(this.content1ItemModelObj);

  Content1ItemModel content1ItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              right: 18,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48,
                  width: 48,
                  margin: getMargin(
                    top: 9,
                    bottom: 8,
                  ),
                  variant: IconButtonVariant.FillOrange500,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsbackground20,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          content1ItemModelObj.titleTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Obx(
                          () => Text(
                            content1ItemModelObj.bodytextTxt.value,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProRegular15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContent16x8,
                  height: getVerticalSize(
                    16,
                  ),
                  width: getHorizontalSize(
                    8,
                  ),
                  margin: getMargin(
                    left: 32,
                    top: 26,
                    bottom: 24,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                top: 12,
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
    );
  }
}
