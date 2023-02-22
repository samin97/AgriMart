import 'package:agriculture_app/controller/cart_controller.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen.dart';

class CartScreen extends StatelessWidget {
  final cartController = Get.put(CartController());
  final CartController controller = Get.find();

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xA1F88C3F), Color(0xFFD9D9D9)],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Route newRoute =
                    MaterialPageRoute(builder: (_) => const HomeScreen());
                Navigator.pushReplacement(context, newRoute);
              },
            ),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            SizedBox(width: 20,)
          ],
        ),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Visibility(
                visible: (controller.items.length == 0 ? true : false),
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 350),
                      Text(
                          "Currently you have zero items in cart. Please add more"),
                    ],
                  ),
                )),
            Visibility(
                visible: !(controller.items.length == 0 ? true : false),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 7,
                        child: ListView.builder(
                            itemCount: controller.items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CartScreenCard(
                                controller: controller,
                                itemModel:
                                    controller.items.keys.toList()[index],
                                quantity:
                                    controller.items.values.toList()[index],
                                index: index,
                              );
                            }),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(
                              thickness: 2,
                              height: 2,
                            ),
                            CartTotal(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CartScreenCard extends StatelessWidget {
  final CartController controller;
  final ItemModel itemModel;
  final int quantity;
  final int index;

  const CartScreenCard(
      {Key? key,
      required this.controller,
      required this.itemModel,
      required this.quantity,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(itemModel.imageURL),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemModel.name),
                Text('Rs. ${itemModel.price}'),
              ],
            )),
            IconButton(
                onPressed: () {
                  controller.removeItem(itemModel);
                },
                icon: const Icon(Icons.remove_circle_outline)),
            Text('$quantity'),
            IconButton(
                onPressed: () {
                  controller.addItems(itemModel);
                },
                icon: const Icon(Icons.add_circle_outline))
          ],
        ),
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                controller.total.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(

              backgroundColor: const Color(0xFF7783E3),
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: () {

            },
            child: const SizedBox(

              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Proceed to check out",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
