import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //shop name
              Text(
                "SUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 25),
              //shop icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  "lib/images/salmon_eggs.png",
                ),
              ),

              const SizedBox(height: 25),

              //shop title
              Text("THE TASTE OF JAPANESE FOOD!",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),

              const SizedBox(height: 10),

              //shop description
              Text(
                "Feel the taste of the most popular Japanese food and sushi, anywhere and anytime",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),

              const SizedBox(height: 10),
              //call to action
              MyButton(
                text: "Get Started",
                onTap: () {
                  //go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
