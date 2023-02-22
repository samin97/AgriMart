import 'package:agriculture_app/controller/cart_controller.dart';
import 'package:agriculture_app/models/category_model.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CategoryCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                       Radius.circular(10)
                      ),
                  child: Image.network(
                    CategoryModel.categoryList[index].imageURL,
                    height: 170,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xB2252424),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              CategoryModel.categoryList[index].name,
                              style: TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ))),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
