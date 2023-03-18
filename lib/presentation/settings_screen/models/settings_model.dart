import 'package:get/get.dart';
import 'content1_item_model.dart';
import 'listiconsbackground2_item_model.dart';
import 'list1_item_model.dart';

class SettingsModel {
  RxList<Content1ItemModel> content1ItemList =
      RxList.generate(5, (index) => Content1ItemModel());

  RxList<Listiconsbackground2ItemModel> listiconsbackground2ItemList =
      RxList.generate(2, (index) => Listiconsbackground2ItemModel());

  RxList<List1ItemModel> list1ItemList =
      RxList.generate(2, (index) => List1ItemModel());
}
