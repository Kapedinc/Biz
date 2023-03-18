import 'package:get/get.dart';

class ListItemModel {
  Rx<String> titleTxt = Rx("lbl_electricity".tr);

  Rx<String> bodytextTxt = Rx("msg_invoice_number".tr);

  String? id = "";
}
