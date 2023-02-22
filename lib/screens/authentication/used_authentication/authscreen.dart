import 'package:agriculture_app/global/constants.dart';
import 'package:agriculture_app/screens/authentication/used_authentication/regiester.dart';
import 'package:flutter/material.dart';

import 'loggin.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xA1F88C3F), Color(0xFFD9D9D9)],
                    tileMode: TileMode.clamp,
                  )
              ),
            ),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                    height: 52,
                  ),
                  const Text(
                    appName,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: "Lobster",
                    ),
                  ),
                  const SizedBox(width: 20,)
                ],
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.lock, color: Colors.white,),
                  text: "Login",
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.white,),
                  text: "Register",
                )
              ],
              indicatorColor: Colors.white38,
              indicatorWeight: 7,

            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFA9D9CC),
                  Color(0xFFA9D9CC),
                ],
              ),
            ),
            child: const TabBarView(
              children: [
                LoginWidget(),
                RegisterWidget(),
              ],
            ),
          ),
        )
    );
  }
}