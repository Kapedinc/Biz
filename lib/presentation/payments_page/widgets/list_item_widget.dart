import '../controller/payments_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

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
              right: 12,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48,
                  width: 48,
                  variant: IconButtonVariant.FillIndigo400,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsbackground5,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listItemModelObj.titleTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadlineBlack900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Obx(
                          () => Text(
                            listItemModelObj.bodytextTxt.value,
                            overflow: TextOverflow.ellipsis,
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
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 12,
                    bottom: 12,
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
    );
  }
}
