import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:prnvfolio_flutter/components/home_initial.dart';
import 'package:prnvfolio_flutter/screens/navbar/navbar.dart';
import 'package:prnvfolio_flutter/components/home_scrollable.dart';
import 'package:prnvfolio_flutter/screens/navbar/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const NavigationDrawer(children: [NavigationDrawerMain()]) : null,
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: ParallaxRain(
                        dropColors: const [
                          Colors.red,
                          Colors.green,
                          Colors.blue,
                          Colors.yellow,
                          Colors.brown,
                          Colors.blueGrey
                        ],
                      ),
                    ),
                    const HomeInitialContainer(),
                  ],
                ),
                // Objective 1: Need to convert to ListView and build some kind of parallax on scroll lol
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const Column(
                    children: [
                      NavBar(),
                      HomeScrollable(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
