import '../controller/payments_controller.dart';
import '../models/listgroupfortythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgroupfortythreeItemWidget extends StatelessWidget {
  ListgroupfortythreeItemWidget(this.listgroupfortythreeItemModelObj);

  ListgroupfortythreeItemModel listgroupfortythreeItemModelObj;

  var controller = Get.find<PaymentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        69,
      ),
      width: getHorizontalSize(
        342,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                        variant: IconButtonVariant.FillBluegray400,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconsbackground7,
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
                                listgroupfortythreeItemModelObj.titleTxt.value,
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
                                  listgroupfortythreeItemModelObj
                                      .bodytextTxt.value,
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
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 64,
            width: 64,
            variant: IconButtonVariant.OutlineLightblueA7003d,
            shape: IconButtonShape.CircleBorder32,
            padding: IconButtonPadding.PaddingAll16,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgButtonsbackground,
            ),
          ),
        ],
      ),
    );
  }
}
