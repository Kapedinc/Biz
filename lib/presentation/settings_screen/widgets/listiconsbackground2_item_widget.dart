import '../controller/settings_controller.dart';
import '../models/listiconsbackground2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listiconsbackground2ItemWidget extends StatelessWidget {
  Listiconsbackground2ItemWidget(this.listiconsbackground2ItemModelObj);

  Listiconsbackground2ItemModel listiconsbackground2ItemModelObj;

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
                  variant: IconButtonVariant.FillOrange500,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsbackground25,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listiconsbackground2ItemModelObj.titleTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Obx(
                          () => Text(
                            listiconsbackground2ItemModelObj.bodytextTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProRegular15Gray80099,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgContent16x8,
                  height: getVerticalSize(
                    16,
                  ),
                  width: getHorizontalSize(
                    8,
                  ),
                  margin: getMargin(
                    top: 16,
                    bottom: 15,
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
                indent: getHorizontalSize(
                  64,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
