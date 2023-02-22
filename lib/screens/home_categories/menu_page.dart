import 'package:agriculture_app/models/category_model.dart';
import 'package:agriculture_app/models/item_model.dart';
import 'package:agriculture_app/models/user_requested_items.dart';
import 'package:agriculture_app/screens/kiosk/edit_kiosk_items.dart';
import 'package:agriculture_app/screens/profile/settings.dart';
import 'package:agriculture_app/screens/profile/user_listings.dart';
import 'package:flutter/material.dart';
import '../../components&widgets/display_card.dart';
import '../../components&widgets/category_card.dart';
import '../../components&widgets/user_requested_items.dart';
import '../../global/changeable.dart';
import '../authentication/used_authentication/authscreen.dart';

class Menus extends StatefulWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  State<Menus> createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.all(2),
            color: const Color(0xFFFFFFFF),
            elevation: 0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 20.0,
                            ),
                            CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage("assets/images/profile7.jpg")),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Ramesh Aladar',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lalitpur, Nepal',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              thickness: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          const Divider(
            thickness: 1,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.all(2),
            color: const Color(0xFFFFFFFF),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 18, 12, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        const Text("21"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.grey,
                            ),
                            Text("Favorites"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        const Text("Rs 7,120"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.attach_money_outlined,
                              color: Colors.grey,
                            ),
                            Text("Sales"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        const Text("Rs 12,120"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.money_off_csred_outlined,
                              color: Colors.grey,
                            ),
                            Text("Purchase"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                        Text("Favorite"),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.history,
                          color: Colors.grey,
                        ),
                        Text("History"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.group,
                          color: Colors.grey,
                        ),
                        Text("Friends"),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.groups,
                          color: Colors.grey,
                        ),
                        Text("Groups"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Route newRoute = MaterialPageRoute(
                      builder: (_) => const UserListings());
                  Navigator.pushReplacement(context, newRoute);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.grey,
                        ),
                        Text("Your Items"),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  elevation: 2,
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.grey,
                        ),
                        Text("Your Jobs"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          InkWell(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.edit_note,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Edit your kiosk",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            onTap: () {
              Route newRoute = MaterialPageRoute(
                  builder: (_) => const EditKiosk());
              Navigator.pushReplacement(context, newRoute);
            },
          ),
          const Divider(
            thickness: 1,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          InkWell(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            onTap: () {
              Route newRoute = MaterialPageRoute(
                  builder: (_) => const SettingsScreen());
              Navigator.pushReplacement(context, newRoute);
            },
          ),
          const Divider(
            thickness: 1,
            height: 5,
            color: Color(0xFFC7C7C7),
          ),
          InkWell(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.privacy_tip,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Privacy and support",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
          const Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xA1F88C3F),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                logOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => const AuthScreen()));
              },
              child: const Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
          ),
          SizedBox(height: 16,)
        ],
      ),
    );
  }

  logOut() async {
    await sharedPreferences!.setBool("isLoggedIn", false);
  }
}
