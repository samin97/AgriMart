import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/screens/profile/settings.dart';
import 'package:flutter/material.dart';

import '../../components&widgets/display_card_user_items.dart';
import '../home_screen.dart';

class UserListings extends StatefulWidget {
  const UserListings({Key? key}) : super(key: key);

  @override
  State<UserListings> createState() => _UserListingsState();
}

class _UserListingsState extends State<UserListings> {
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Your items",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22, color: Color(0xA1F88C3F)),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(height: 650,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return UserItemsCard(
                      index: '$index',
                    );
                  },
                ),
            ),

          ],
        ),
      ),
    );
  }
}
