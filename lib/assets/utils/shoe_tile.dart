import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 280,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SHOE IMAGE
          SizedBox(
            height: 163.6,
            width: 280,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.dstOver,
              ),
            ),
          ),

          // DESCRIPTION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          // PRICE + DETAILS
          Padding(
            padding: const EdgeInsets.only(
              left: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SHOE NAME
                    SizedBox(
                      width: 180,
                      child: Text(
                        shoe.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),

                    // PRICE
                    Text(
                      "€ ${shoe.price}",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),

                // PLUS BUTTON
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: const Icon(
                    EvaIcons.plus,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
