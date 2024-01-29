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
      margin: EdgeInsets.all(10),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //price
                Text(
                  '\$' + food.price.toString(),
                ),
                //rating
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text('Score ' + food.rating),
                Text(food.isAvailable ? 'Available' : 'Not Available')
              ],
            ),
          )
        ],
      ),
    );
  }
}
