import 'controller/loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/cards_page/cards_page.dart';
import 'package:vashon_s_application20/presentation/dashboard_page/dashboard_page.dart';
import 'package:vashon_s_application20/presentation/payments_page/payments_page.dart';
import 'package:vashon_s_application20/widgets/app_bar/appbar_image.dart';
import 'package:vashon_s_application20/widgets/app_bar/appbar_stack.dart';
import 'package:vashon_s_application20/widgets/app_bar/custom_app_bar.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class LoadingScreen extends GetWidget<LoadingController> {
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
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    top: 3,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          36,
                        ),
                        leadingWidth: 40,
                        leading: AppbarImage(
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          imagePath: ImageConstant.imgContent,
                          margin: getMargin(
                            left: 16,
                            top: 5,
                            bottom: 6,
                          ),
                        ),
                        actions: [
                          AppbarStack(
                            margin: getMargin(
                              left: 16,
                              right: 16,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 8,
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_dashboard".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProBold34,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgMinimize,
                height: getSize(
                  22,
                ),
                width: getSize(
                  22,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                  bottom: 311,
                ),
                child: Text(
                  "lbl_loading".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray80099,
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
