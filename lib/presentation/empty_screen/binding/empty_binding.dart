import '../controller/empty_controller.dart';
import 'package:get/get.dart';

class EmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyController());
  }
}
