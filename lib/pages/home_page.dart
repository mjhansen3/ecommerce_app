import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: FloatingNavigationBar(
        barWidth: 140.0,
        backgroundColor: Colors.grey[900],
        iconColor: Colors.white,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          
        ),
        indicatorColor: Colors.white,
        indicatorHeight: 3.0,
        items: [
          NavBarItems(
            icon: Icons.home_outlined,
            title: "Home"
          ),
          NavBarItems(
            icon: Icons.search_outlined,
            title: "Search"
          ),
        ],
        onChanged: (p0) => {},
      ),
    );
  }
}