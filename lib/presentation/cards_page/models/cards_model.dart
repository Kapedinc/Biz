import 'package:get/get.dart';
import 'listiconsbackground1_item_model.dart';

class CardsModel {
  RxList<Listiconsbackground1ItemModel> listiconsbackground1ItemList =
      RxList.generate(4, (index) => Listiconsbackground1ItemModel());
}
