// ignore_for_file: prefer_const_constructors

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:floaty_navy_bar/floaty_navy_bar.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  var pageList = <Widget>[
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                EvaIcons.menu2Outline,
                color: Colors.black,
              ),
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 182.0,
                  height: 203.5,
                  margin: EdgeInsets.symmetric(horizontal: 75.0),
                  padding: EdgeInsets.only(top: 55.5, bottom: 8.0),
                  child: Image.asset(
                    'lib/assets/img/nike_logo.png',
                    color: Colors.white,
                    width: 80,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      EvaIcons.homeOutline,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      EvaIcons.infoOutline,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      EvaIcons.personOutline,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(
                  EvaIcons.logOutOutline,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          pageList[currentIndex],
          FloatyNavyBar(
            backgroundColor: Colors.black87,
            barHeight: 70.0,
            iconColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
            iconSize: 28.0,
            indicatorColor: Colors.white,
            indicatorHeight: 3,
            indicatorWidth: 14.0,
            items: [
              NavyBarItem(
                icon: EvaIcons.homeOutline,
              ),
              NavyBarItem(
                icon: EvaIcons.shoppingCartOutline,
              ),
            ],
            onChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}