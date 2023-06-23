import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appbar.dart';

String about =
    'Welcome to Dietify, your one-stop destination for automated diet planning and nutrition guidance. We understand that maintaining a healthy lifestyle can be challenging, which is why we\'re here to simplify the process for you.';
String work =
    'Our intelligent algorithm takes into account factors such as your age, gender, height, weight, and specific dietary requirements. Whether you\'re looking to lose weight, build muscle, or simply adopt a balanced eating pattern, our system will create a diet plan that aligns with your goals.';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF3A1C71),
              Color(0xFFD76D77),
              Color(0xFFFFAF7B),
            ],
          ),
        ),
        child: Column(
          children: [
            customappbar(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            height: 400,
                            width: 500,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/workout.png',
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 600,
                            width: 600,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                about,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.josefinSans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white60
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 300,
                            width: 600,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(work,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white60
                                  )),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 400,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  'assets/617.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: double.infinity,
                    child: Text('© Copyright 2023 DIETIFY',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.josefinSans(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
