// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 2, 1, 22),
          width: double.infinity,
          child: SizedBox(
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Hi, Mr Lionel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("What will you do today ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                CarouselSlider(
                  options: CarouselOptions(height: 250.0),
                  items: [1, 2, 3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 20, 3, 97),
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage(i == 1
                                  ? 'assets/images/Gambar_Calculator.png'
                                  : i == 2
                                      ? 'assets/images/Gambar_Odd.png'
                                      : 'assets/images/Gambar_Dev.pngS'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'text $i',
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Stopwatch!",
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 2, 0, 0),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "JAGJSAGSAJSGHASsagdhagdagsdhgafsdhgasdfagsfdhafdhadgdafshgd"),
                              Row(
                                children: [
                                  Spacer(),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text("button panah")),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("About Developer"),
                            ElevatedButton(
                                onPressed: () {}, child: Text("asdasdasd"))
                          ],
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
    );
  }
}
