import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/screens/items/user_item_edit.dart';
import 'package:agriculture_app/screens/profile/settings.dart';
import 'package:agriculture_app/screens/profile/user_listings.dart';
import 'package:flutter/material.dart';

class UserItemDetails extends StatefulWidget {
  final String index;

  const UserItemDetails({Key? key, required this.index}) : super(key: key);

  @override
  State<UserItemDetails> createState() => _UserItemDetailsState();
}

class _UserItemDetailsState extends State<UserItemDetails> {
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
                    MaterialPageRoute(builder: (_) => const UserListings());
                Navigator.pushReplacement(context, newRoute);
              },
            ),
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            IconButton(
                onPressed: () {
                  Route newRoute =
                      MaterialPageRoute(builder: (_) => const SettingsScreen());
                  Navigator.pushReplacement(context, newRoute);
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Container(
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
                      //'https://i.guim.co.uk/img/media/51628ca333decf2e8fc6fc25bfba6a99dd0dc8f7/0_0_3744_5616/master/3744.jpg?width=700&quality=85&auto=format&fit=max&s=593e66cadcc4e638c57d5eb96374a032',
                      'https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6',
                      width: double.infinity,
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
                  children: const [
                    Text('Basket of vegetables',
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Bebas",
                          fontSize: 34,
                        )),
                    Text("Patan, Lalitpur",
                        style: TextStyle(
                          color: Color(0xC8000000),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        )),
                    Text(
                      'Price: 700',
                      style: TextStyle(
                        color: Color(0xC8000000),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Collection of different vegetables",
                      style: TextStyle(
                        color: Color(0xC8000000),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      thickness: 4,
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
                      thickness: 4,
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
                      'Delivery required.',
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
                      thickness: 4,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xA1F88C3F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                onPressed: () {
                  Route newRoute =
                      MaterialPageRoute(builder: (context) => const EditItems());
                  Navigator.pushReplacement(context, newRoute);
                },
                child: const Text(
                  "Edit details",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
