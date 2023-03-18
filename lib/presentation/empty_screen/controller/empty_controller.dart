import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/empty_screen/models/empty_model.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class EmptyController extends GetxController {
  Rx<EmptyModel> emptyModelObj = EmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
