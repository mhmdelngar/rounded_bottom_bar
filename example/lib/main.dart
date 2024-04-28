import 'package:flutter/material.dart';
import 'package:rounded_bottom_bar_flutter/rounded_bottom_bar_flutter.dart';

import 'image_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  List<String> icons = [
     ImageRoutes.navBarHome,
     ImageRoutes.navBarLocation,
     ImageRoutes.navBarSpeedRun,
     ImageRoutes.navBarLineUp,
  ];
  List<IconData> iconsData = [
     Icons.home,
     Icons.data_exploration_rounded,
     Icons.run_circle_outlined,
     Icons.location_pin,

  ];

  List<Widget> pages = [
    const Center(child: Icon(Icons.home)),
    const Center(child: Icon(Icons.location_pin)),
    const Center(child: Icon(Icons.spa_outlined)),
    const Center(child: Icon(Icons.line_axis_rounded)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,e)=>Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: pages.elementAt(currentIndex),
        floatingActionButton: RoundedBottomBarSVG(
          currentIcon: currentIndex,
          onTap: (int index) => updateIndex(index),
          svgIcons: icons,
        ),
      ),
    );
  }

  updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
