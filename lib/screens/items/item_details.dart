import 'package:agriculture_app/components&widgets/test_code.dart';
import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/models/comments_model.dart';
import 'package:agriculture_app/screens/home_categories/cart_page.dart';
import 'package:agriculture_app/screens/profile/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components&widgets/custom_text_field.dart';
import '../../components&widgets/display_card_user_items.dart';
import '../../components&widgets/comments_card.dart';
import '../../controller/cart_controller.dart';
import '../../models/item_model.dart';
import '../home_screen.dart';

class ItemDetails extends StatefulWidget {
  final ItemModel model;
  final int index;

  const ItemDetails({Key? key, required this.model, required this.index}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  TextEditingController commentsController = TextEditingController();

  final cartController = Get.put(CartController());

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
            IconButton(
                onPressed: () => Get.to(() => HomeScreen()),
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFFFFFFF),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Container(
          color: const Color(0xFFECECEC),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        widget.model.imageURL,
                        height: 240,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.model.name,
                          style: TextStyle(
                            color: Color(0xC8000000),
                            fontFamily: "Varela",
                            fontWeight: FontWeight.w600,
                            fontSize: 34,
                          )),
                      Text(
                        'Rs${widget.model.price}/kg',
                        style: TextStyle(
                          color: Color(0xFF4F8551),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xFF7D7D7D),
                            size: 18,
                          ),
                          Text(widget.model.address,
                              style: TextStyle(
                                color: Color(0xC8000000),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              )),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        'The Auledio Vegetable Basket is the perfect way to store and display your fresh greenery. This basket bowl has two tiers and a banana hanger, so you can neatly organize everything in one place. The entire body frame is extremely smooth and has four raised feet to keep the fruit and vegetables away from contaminants.',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        'Available Date : 10/09/2078',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Available Duration : 30 Days',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Phone number: 994321858321',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Category : vegetables',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xA1F88C3F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                  ),
                  onPressed: () {
                    cartController.addItems(ItemModel.itemsList[widget.index]);
                  },
                  icon: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 20,
                  ),
                  label: const Text(
                    "Add to cart",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        'Comments',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                            minHeight: 100,
                            minWidth: double.infinity,
                            maxHeight: 400),
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.all(8.0),
                          itemCount: CommentsModel.itemsList.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 12);
                          },
                          itemBuilder: (context, int index) {
                            return CommentsCard(
                              index: index,
                            );
                          },
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(10),
                        child: TextFormField(
                          enabled: true,
                          controller: commentsController,
                          obscureText: false,
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusColor: Theme.of(context).primaryColor,
                            hintText: "Add your comment",
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
