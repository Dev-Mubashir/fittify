import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'myactivities.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xAAffffff),
      body: Container(
        padding: EdgeInsets.only(top: 70),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  padding: const EdgeInsets.only(left: 35),
                  height: 530,
                  width: 500,
                  child: Text(
                    "Fitness \nYou Wanna \nHave",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  // height: 300.0,
                  child: Image(
                    image: AssetImage('assets/images/yoga_lady.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 1, 30, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5.0),
                              const TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email_outlined),
                                  hintText: 'Username',
                                  border: InputBorder.none,
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.only(bottom: 2.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromARGB(118, 158, 158, 158),
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    icon: Icon(Icons.lock_outline),
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.visibility_off)),
                              ),
                              Container(
                                // padding: EdgeInsets.only(bottom: 2.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromARGB(118, 158, 158, 158),
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Text(
                                    "Forgot Details?",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red),
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    "Create Account",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 41, 99, 246)),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyActivities()),
                          );
                        },
                        padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.lightBlue,
                        child: Text('Login',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
