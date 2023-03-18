import '../controller/loading_controller.dart';
import 'package:get/get.dart';

class LoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingController());
  }
}
