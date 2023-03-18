import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/dashboard_container_screen/models/dashboard_container_model.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class DashboardContainerController extends GetxController {
  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.onboardingOneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
