// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homepage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Count Us",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                            "Hi, Mr Lionel", //nanti namanya ini disesuain sama usernamenya pas daftar atau klo gabisa apus aja gapapa io
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("What will you do today ?",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 250.0,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.5,
                        autoPlayAnimationDuration: Duration(milliseconds: 300)),
                    items: [1, 2, 3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 1.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(2, 19, 45, 100),
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                image: AssetImage(i == 1
                                    ? 'assets/images/Gambar_Calculator.png'
                                    : i == 2
                                        ? 'assets/images/Gambar_Odd.png'
                                        : 'assets/images/Gambar_Dev.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 330,
                        child: Card(
                          color: const Color.fromARGB(255, 25, 2, 108),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Stopwatch!",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                            255, 240, 240, 240),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    "Count time for your activites with our incredible and simple stopwatch",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                            255, 240, 240, 240),
                                        fontSize: 12)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange,
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Try it now!",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("My Favourite",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("assets/images/odd.png"),
                                  width: 200,
                                ),
                                Text("asdasdasd"),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite)),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text("asdasdasd"))
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Text("E-Learning Sites",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/odd.png"),
                                width: 250,
                              )
                            ],
                          ),
                        );
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 330,
                        height: 200,
                        child: Card(
                          color: const Color.fromARGB(255, 25, 2, 108),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "About Developer",
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "See detail information about \n the developer of the CountUs App",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "See the Details",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
