import 'package:ecommerce_app/assets/models/shoe.dart';
import 'package:ecommerce_app/assets/utils/shoe_tile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../assets/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8.0)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    EvaIcons.searchOutline,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                "everyone flie... some fly more than others",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            // LIST OF SHOES FOR SALE
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(right: 25.0),
                itemBuilder: (context, index) {
                  // GET A SHOE FROM THE SHOE LIST
                  Shoe shoe = value.getShoeList()[index];

                  // RETURN THE SHOE
                  return ShoeTile(
                    shoe: shoe,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ],
        );
      }
    );
  }
}
