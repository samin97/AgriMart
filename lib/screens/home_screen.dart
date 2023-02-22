import 'package:agriculture_app/screens/home_categories/addItem_page.dart';
import 'package:agriculture_app/screens/home_categories/cart_page.dart';
import 'package:agriculture_app/screens/home_categories/front_page.dart';
import 'package:agriculture_app/screens/home_categories/menu_page.dart';
import 'package:agriculture_app/screens/home_categories/search_page.dart';
import 'package:agriculture_app/screens/profile/user_listings.dart';
import 'package:flutter/material.dart';

import '../global/constants.dart';
import 'home_categories/notifications_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Front(),
    Search(),
    AddItem(),
    NotificationScreen(),
    Menus(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final ScrollController _homeController = ScrollController();

  Widget _listViewBody() {
    return ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              'Item $index',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 1,
            ),
        itemCount: 50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [colorBrown, colorBrown2],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                    height: 52,
                  )),
              const Text(
                appName,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: "Lobster",
                ),
              ),
              IconButton(
                  onPressed: () {
                    Route newRoute = MaterialPageRoute(
                        builder: (context) =>  CartScreen());
                    Navigator.pushReplacement(context, newRoute);
                  },
                  icon: const Icon(Icons.add_shopping_cart))
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 80.0,
        child: BottomNavigationBar(
          iconSize: 34,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: colorBrown2),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: colorBrown2),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_business),
                label: 'Add',
                backgroundColor: colorBrown2),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
                backgroundColor: colorBrown2),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menus',
                backgroundColor: colorBrown2),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xCD96E097),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
