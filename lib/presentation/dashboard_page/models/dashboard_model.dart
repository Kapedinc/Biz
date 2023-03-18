import 'package:get/get.dart';
import 'content_item_model.dart';

class DashboardModel {
  RxList<ContentItemModel> contentItemList =
      RxList.generate(5, (index) => ContentItemModel());
}
