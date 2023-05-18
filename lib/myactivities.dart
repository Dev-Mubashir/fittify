import 'package:flutter/material.dart';

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
