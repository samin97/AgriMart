import 'package:agriculture_app/models/item_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //dictionary
  var _items = {}.obs;

  //Add items
  void addItems(ItemModel itemModel) {
    if (_items.containsKey(itemModel)) {
      _items[itemModel] += 1;
    } else {
      _items[itemModel] = 1;
    }
    Get.snackbar(
        "Product added", "You have added the ${itemModel.name} to the cart",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1));
  }

  //Remove items
  void removeItem(ItemModel itemModel) {
    if (_items.containsKey(itemModel) && _items[itemModel] == 1) {
      _items.removeWhere((key, value) => key == itemModel);
    } else {
      _items[itemModel] -= 1;
    }
  }

  //Get items
  get items => _items;

  //individual subtotal
  void individualSubtotal(ItemModel itemModel) {

  }


  //Get items sub-total

  get itemSubtotal => _items.entries
      .map((itemModel) => itemModel.key.price * itemModel.value)
      .toList();

//Get total
  get total => _items.entries
      .map((itemModel) => itemModel.key.price * itemModel.value)
      .toList()
      .reduce((value, element) => value + element);
}
