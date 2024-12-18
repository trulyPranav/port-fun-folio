import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:rotation/rotation.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScrollable extends StatefulWidget {
  const HomeScrollable({super.key});

  @override
  State<HomeScrollable> createState() => _HomeScrollableState();
}

class _HomeScrollableState extends State<HomeScrollable> {
  RotatorFlipState _flipState = RotatorFlipState.showFirst;
  final List<String> imageUrls = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(50.00),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          // direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TypeWriter.text(
                    "Hey I'm Pranav!    ",
                    maintainSize: true,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.racingSansOne(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      DefaultTextStyle(
                        style: GoogleFonts.racingSansOne(
                          color: Colors.white,
                          fontSize: 42,
                        ),
                        child: const Text("I'm a "),
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.racingSansOne(
                          color: Colors.white,
                          fontSize: 42,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText("Flutter", speed: const Duration(milliseconds: 300)),
                            TypewriterAnimatedText("Python", speed: const Duration(milliseconds: 300)),
                            TypewriterAnimatedText("DevOps", speed: const Duration(milliseconds: 300)),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          pause: const Duration(seconds: 1), // Adjusted the pause duration
                        ),
                      ),
                      Text(
                        "Developer",
                        style: GoogleFonts.racingSansOne(
                          color: Colors.white,
                          fontSize: 42,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(150, 130, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _flipState == RotatorFlipState.showFirst
                              ? _flipState = RotatorFlipState.showSecond
                              : _flipState = RotatorFlipState.showFirst;
                        });
                      },
                      child: RotatorFlip(
                        firstChild: Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.arrow_downward_outlined,
                            size: 32,
                            weight: 58,
                          ),
                        ),
                        secondChild: Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Scrollll!!!",
                              style: GoogleFonts.specialElite(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        duration: const Duration(milliseconds: 300),
                        flipState: _flipState,
                        direction: RotatorFlipDirection.horizontal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Using Expanded to ensure Carousel takes up the remaining space
            Expanded(
              child: CarouselSlider.builder(
                itemCount: imageUrls.length,
                itemBuilder: (context, index, realIndex) {
                  String item = imageUrls[index];
                  return Container(
                    margin: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(item, fit: BoxFit.cover, width: 1000.0),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'No. $index image', // Using `index` directly here
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
