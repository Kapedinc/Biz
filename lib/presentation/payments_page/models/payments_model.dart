import 'package:get/get.dart';
import 'listiconsbackground_item_model.dart';
import 'listgroupfortythree_item_model.dart';
import 'list_item_model.dart';

class PaymentsModel {
  RxList<ListiconsbackgroundItemModel> listiconsbackgroundItemList =
      RxList.generate(5, (index) => ListiconsbackgroundItemModel());

  RxList<ListgroupfortythreeItemModel> listgroupfortythreeItemList =
      RxList.generate(3, (index) => ListgroupfortythreeItemModel());

  RxList<ListItemModel> listItemList =
      RxList.generate(2, (index) => ListItemModel());
}
