import '../transactions_screen/widgets/sectionlisttitle_two_item_widget.dart';
import 'controller/transactions_controller.dart';
import 'models/sectionlisttitle_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/cards_page/cards_page.dart';
import 'package:vashon_s_application20/presentation/dashboard_page/dashboard_page.dart';
import 'package:vashon_s_application20/presentation/payments_page/payments_page.dart';
import 'package:vashon_s_application20/widgets/app_bar/appbar_image.dart';
import 'package:vashon_s_application20/widgets/app_bar/custom_app_bar.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class TransactionsScreen extends GetWidget<TransactionsController> {
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
                  padding: getPadding(
                    top: 3,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.fillGray100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          27,
                        ),
                        leadingWidth: 31,
                        leading: AppbarImage(
                          height: getVerticalSize(
                            21,
                          ),
                          width: getHorizontalSize(
                            10,
                          ),
                          imagePath: ImageConstant.imgContent21x10,
                          margin: getMargin(
                            left: 21,
                          ),
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: Text(
                            "lbl_dashboard".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtBodyOrange500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 18,
                        ),
                        child: Text(
                          "lbl_checking".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProBold34,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 16,
                  top: 8,
                  right: 16,
                ),
                padding: getPadding(
                  left: 9,
                  top: 6,
                  right: 9,
                  bottom: 6,
                ),
                decoration: AppDecoration.fillGray6001e.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchicon,
                      height: getVerticalSize(
                        21,
                      ),
                      width: getHorizontalSize(
                        18,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "lbl_search".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtBodyGray80099,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgDictationicon,
                      height: getVerticalSize(
                        21,
                      ),
                      width: getHorizontalSize(
                        14,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: Obx(
                  () => GroupedListView<SectionlisttitleTwoItemModel, String>(
                    shrinkWrap: true,
                    useStickyGroupSeparators: true,
                    stickyHeaderBackgroundColor: Colors.transparent,
                    elements: controller
                        .transactionsModelObj.value.sectionlisttitleTwoItemList,
                    groupBy: (element) => element.groupBy!.value,
                    groupSeparatorBuilder: (String value) {
                      return Padding(
                        padding: getPadding(
                          left: 16,
                          right: 221,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFProSemibold20.copyWith(
                                color: ColorConstant.black900,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemBuilder: (context, model) {
                      return SectionlisttitleTwoItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Payments:
        return AppRoutes.paymentsPage;
      case BottomBarEnum.Cards:
        return AppRoutes.cardsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.paymentsPage:
        return PaymentsPage();
      case AppRoutes.cardsPage:
        return CardsPage();
      default:
        return DefaultWidget();
    }
  }
}
