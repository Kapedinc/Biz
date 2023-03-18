import 'package:vashon_s_application20/core/app_export.dart';
import 'package:vashon_s_application20/presentation/transactions_screen/models/transactions_model.dart';
import 'package:vashon_s_application20/widgets/custom_bottom_bar.dart';

class TransactionsController extends GetxController {
  Rx<TransactionsModel> transactionsModelObj = TransactionsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
