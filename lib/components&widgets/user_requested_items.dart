import 'package:agriculture_app/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/user_requested_items.dart';
import '../screens/items/item_details.dart';

class UserRequestedItemsCard extends StatelessWidget {

  final cartController = Get.put(CartController());
  final int index;

  UserRequestedItemsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    RequestedItemModel.itemsList[index].name,
                  ),
                  Text(
                    'Price ${RequestedItemModel.itemsList[index].price}',
                  ),
                  Text(
                    RequestedItemModel.itemsList[index].address,
                  ),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xA1F88C3F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_tree_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    label: const Text(
                      "Apply",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //todo:
      onTap: () {
        }
    );
  }
}
