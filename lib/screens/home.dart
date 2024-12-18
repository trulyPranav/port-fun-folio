import 'package:flutter/material.dart';
import 'dart:math';
import 'package:prnvfolio_flutter/components/home_initial_components/overlay_text.dart';
import 'package:prnvfolio_flutter/components/home_initial_components/parallax_rain_widget.dart';
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
    final screenSize = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const NavigationDrawer(children: [NavigationDrawerMain()]) : null,
        backgroundColor: Colors.black87,
        body: ScrollTransformView(
          children: [
            ScrollTransformItem(
              builder: (scrollOffset) {
                // final offPercnt = min(scrollOffset/screenSize.height, 1.0);     
                return ParallaxRainWidget(
                  height: screenSize.height, // - (screenSize.height*0.5*offPercnt),
                  width: screenSize.width // - (screenSize.width*0.7*offPercnt),
                );
              },
              offsetBuilder: (scrollOffset){
                // final offPercnt = min(scrollOffset/screenSize.height, 1.0);
                // final shrinkHeight = screenSize.height - (screenSize.height*0.2*offPercnt);
                return Offset(0, scrollOffset);
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) {
                return const OverlayText(top: 100, left: 50, mainText: "Let's");
              },
              offsetBuilder: (scrollOffset){
                  double offset = -scrollOffset * 0.5 - 700;
                  return Offset(0, max(offset, -screenSize.height));
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) {
                return const OverlayText(top: 260, left: 290, mainText: "Get");
              },
              offsetBuilder: (scrollOffset){
                  double offset = -scrollOffset * 0.5 - 700;
                  return Offset(0, max(offset, -screenSize.height));
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) {
                return const OverlayText(top: 420, left: 220, mainText: "Started");
              },
              offsetBuilder: (scrollOffset){
                  double offset = -scrollOffset * 0.5 - 700;
                  return Offset(0, max(offset, -screenSize.height));
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) {
                return const NavBar();
              },
              offsetBuilder: (scrollOffset) {
                return Offset(0, -scrollOffset * 0.5 + 700);
              },
            ),
            ScrollTransformItem(
              builder: (scrollOffset) {
                return const HomeScrollable();
              },
              offsetBuilder: (scrollOffset) {
                return Offset(0, -scrollOffset * 0.5 + 700);
              },

            )
          ]
        ),
      ),
    );
  }
}


// Available till now:
// - Home Initial Container
// - OverlayText
// - NavBar
// - HomeScrollable