import 'package:agriculture_app/controller/cart_controller.dart';
import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/items/item_details.dart';

class DisplayCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  DisplayCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  child: Image.network(
                    ItemModel.itemsList[index].imageURL,
                    height: 150,
                  ),
                ),
                Positioned(
                  right: 0.9,
                  bottom: 0.0,
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorGrey2,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () {
                              cartController
                                  .addItems(ItemModel.itemsList[index]);
                            },
                            icon: const Icon(
                              Icons.add_shopping_cart,
                              color: Color(0xC8000000),
                              size: 20,
                            )),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ItemModel.itemsList[index].name,
                    style: const TextStyle(
                      color: Color(0xC8000000),
                      fontFamily: "Varela",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rs ${ItemModel.itemsList[index].price}',
                    style: const TextStyle(
                      color: Color(0xC8000000),
                      fontFamily: "Varela",
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF7D7D7D),
                        size: 18,
                      ),
                      Text(
                        ItemModel.itemsList[index].address,
                        style: const TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Varela",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Route newRoute =
            MaterialPageRoute(builder: (context) =>  ItemDetails(model: ItemModel.itemsList[index], index: index,));
        Navigator.pushReplacement(context, newRoute);
      },
    );
  }
}
