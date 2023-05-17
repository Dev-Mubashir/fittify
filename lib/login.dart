import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xAAffffff),
      body: Container(
        padding: EdgeInsets.only(top: 90),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 169, 183, 255),
              Color.fromARGB(255, 131, 177, 250),
            ],
          ),
        ),
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Fitness \nYou Wanna \nHave",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const Positioned(
            bottom: 100,
            child: Image(
              image: AssetImage('assets/images/yoga_lady.png'),
            ),
          )
          // const SizedBox(
          //   child: Center(
          //     child:
          //   ),
          // ),
        ]),
      ),
    );
  }
}
