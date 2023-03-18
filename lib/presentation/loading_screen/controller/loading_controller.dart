import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/loading_screen/models/loading_model.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class LoadingController extends GetxController {
  Rx<LoadingModel> loadingModelObj = LoadingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
