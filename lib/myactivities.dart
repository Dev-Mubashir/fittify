import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyActivities extends StatelessWidget {
  const MyActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40),
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
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(
                    image: AssetImage('assets/icons/menu.png'),
                  ),
                  Image(
                    image: AssetImage('assets/icons/avatar.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "My Activities",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: 45,
                      color: Colors.black87,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 24, color: Colors.black87),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 61, 119, 234)),
                    child: Days("Daily"),
                  ),
                  Days("Weekly"),
                  Days("Monthly"),
                  Days("Yearly"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daily Meals",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 72, 56, 103),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.lunch_dining_outlined,
                        size: 30,
                        weight: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daily Meals",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 72, 56, 103),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.info_outline,
                        size: 30,
                        weight: 10,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget Days(String days) {
  return Text(
    days,
    style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),
  );
}
