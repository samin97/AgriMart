import 'package:agriculture_app/controller/cart_controller.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/comments_model.dart';

class CommentsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CommentsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                    ),
                child: Image.network(
                  CommentsModel.itemsList[index].imageURL,
                  height: 75,
                  width: 75,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(14,8,8,8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      CommentsModel.itemsList[index].name,
                    ),
                    Text(
                      'Likes: ${CommentsModel.itemsList[index].likes}',
                    ),
                    Text(
                      CommentsModel.itemsList[index].comments,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: (){}
    );
  }
}
