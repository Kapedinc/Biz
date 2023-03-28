import '../controller/payments_controller.dart';
import '../models/listiconsbackground_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListiconsbackgroundItemWidget extends StatelessWidget {
  ListiconsbackgroundItemWidget(this.listiconsbackgroundItemModelObj);

  ListiconsbackgroundItemModel listiconsbackgroundItemModelObj;

  var controller = Get.find<PaymentsController>();

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
                  variant: IconButtonVariant.FillRedA400,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsbackground11,
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
                          listiconsbackgroundItemModelObj.titleTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Obx(
                          () => Text(
                            listiconsbackgroundItemModelObj.bodytextTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProRegular15Gray80099,
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
                    left: 133,
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
