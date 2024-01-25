import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //image
          Image.asset(
            food.imagePath,
            height: 140,
          ),
          //name
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 18),
          ),
          //rating & price
          SizedBox(
            width: 160,
            child: Row(
              children: [
                //price
                Text(
                  '\$' + food.price.toString(),
                ),
                //rating
                Icon(Icons.star),
                Text('Score' + food.rating),
                Text(data.isAvailable ? 'Available' : 'Not Available')
              ],
            ),
          )
        ],
      ),
    );
  }
}
