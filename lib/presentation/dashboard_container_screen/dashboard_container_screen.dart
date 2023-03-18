import 'controller/dashboard_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/cards_page/cards_page.dart';
import 'package:vashon_s_application20/presentation/dashboard_page/dashboard_page.dart';
import 'package:vashon_s_application20/presentation/payments_page/payments_page.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class DashboardContainerScreen extends GetWidget<DashboardContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.dashboardPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

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
