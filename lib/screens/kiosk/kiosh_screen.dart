import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/models/kiosk_model.dart';
import 'package:agriculture_app/screens/kiosk/add_kiosk.dart';
import 'package:agriculture_app/screens/kiosk/kiosk_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../components&widgets/display_card.dart';
import '../../controller/cart_controller.dart';
import '../../models/category_model.dart';
import '../../models/item_model.dart';
import '../home_screen.dart';
import '../items/item_details.dart';

class KioskScreen extends StatefulWidget {
  const KioskScreen({Key? key}) : super(key: key);

  @override
  State<KioskScreen> createState() => _KioskScreenState();
}

class _KioskScreenState extends State<KioskScreen> {
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
            const Text("Kiosk"),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: KioskModel.kioskList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return KioskCard(index: index);
            }),
      ),

      // GridView.count(
      //
      //   // Create a grid with 2 columns. If you change the scrollDirection to
      //   // horizontal, this produces 2 rows.
      //   crossAxisCount: 3,
      //   // Generate 100 widgets that display their index in the List.
      //   children: List.generate(100, (index) {
      //     return InkWell(
      //       child: Card(
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Stack(
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: const BorderRadius.only(
      //                       topLeft: Radius.circular(5),
      //                       topRight: Radius.circular(5)),
      //                   child: Image.network(
      //                     ItemModel.itemsList[index].imageURL,
      //                     height: 150,
      //                   ),
      //                 ),
      //                 Positioned(
      //                   right: 0.9,
      //                   bottom: 0.0,
      //                   child: Padding(
      //                       padding: const EdgeInsets.all(6.0),
      //                       child: Container(
      //                         decoration: BoxDecoration(
      //                             color: colorGrey2,
      //                             borderRadius: BorderRadius.circular(30)),
      //                         child: IconButton(
      //                             onPressed: () {
      //                               cartController
      //                                   .addItems(ItemModel.itemsList[index]);
      //                             },
      //                             icon: const Icon(
      //                               Icons.add_shopping_cart,
      //                               color: Color(0xC8000000),
      //                               size: 20,
      //                             )),
      //                       )),
      //                 ),
      //               ],
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(10.0),
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     ItemModel.itemsList[index].name,
      //                     style: const TextStyle(
      //                       color: Color(0xC8000000),
      //                       fontFamily: "Varela",
      //                       fontWeight: FontWeight.w400,
      //                       fontSize: 18,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Rs ${ItemModel.itemsList[index].price}',
      //                     style: const TextStyle(
      //                       color: Color(0xC8000000),
      //                       fontFamily: "Varela",
      //                       fontSize: 18,
      //                     ),
      //                   ),
      //                   Row(
      //                     children: [
      //                       const Icon(
      //                         Icons.location_on,
      //                         color: Color(0xFF7D7D7D),
      //                         size: 18,
      //                       ),
      //                       Text(
      //                         ItemModel.itemsList[index].address,
      //                         style: const TextStyle(
      //                           color: Color(0xC8000000),
      //                           fontFamily: "Varela",
      //                           fontWeight: FontWeight.w400,
      //                           fontSize: 16,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       onTap: () {
      //         Route newRoute =
      //         MaterialPageRoute(builder: (context) => const ItemDetails());
      //         Navigator.pushReplacement(context, newRoute);
      //       },
      //     );
      //   }),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Route newRoute = MaterialPageRoute(builder: (_) => const AddKiosk());
          Navigator.pushReplacement(context, newRoute);
        },
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "New ",
              ),
              WidgetSpan(
                child: Icon(Icons.add, size: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
