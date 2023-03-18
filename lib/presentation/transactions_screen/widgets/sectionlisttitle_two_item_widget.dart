import '../controller/transactions_controller.dart';
import '../models/sectionlisttitle_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SectionlisttitleTwoItemWidget extends StatelessWidget {
  SectionlisttitleTwoItemWidget(this.sectionlisttitleTwoItemModelObj);

  SectionlisttitleTwoItemModel sectionlisttitleTwoItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Padding(
        padding: getPadding(
          left: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 16,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    variant: IconButtonVariant.FillLightblueA700,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsbackground48x48,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 1,
                      bottom: 1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_rent_for_august".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "lbl_8_52_am".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProRegular15Gray80099,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 59,
                      bottom: 26,
                    ),
                    child: Text(
                      "lbl_550_00".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtHeadline,
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
    );
  }
}
