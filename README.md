<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
## Package Name: RoundedBottomBar for Flutter

## Description:
RoundedBottomBar for Flutter is a sleek and adaptable Flutter package crafted to simplify the integration of rounded bottom navigation bars into Flutter applications. With its contemporary design and robust features, this package enables developers to seamlessly incorporate rounded bottom navigation bars, supporting both SVG icons via RoundedBottomBarSVG and icon data via RoundedBottomBar.

![rounded bottom bar](https://github.com/mhmdelngar/rounded_bottom_bar/assets/66909471/26eb1c79-2a26-4336-a133-1b568a1e008c)




## Features

1. **Sleek Design**: Modern and stylish bottom navigation bars.
2. **SVG Support**: Scalable Vector Graphics (SVG) for high-quality icons.
3. **Customization**: Easily customize colors, sizes, and styles.
4. **Smooth Transitions**: Fluid animations for seamless navigation.
5. **Flexible Configuration**: Configure navigation items with ease.
6. **Accessibility**: Supports dynamic font sizing and screen readers.
7. **Platform Compatibility**: Works seamlessly on Android and iOS.





## Usage


**How to Use:**

1. Install the package using your preferred package manager (`pub get`).
2. Import the package into your Flutter project.
3. Instantiate the `RoundedBottomBar` widget and configure it with your desired settings.
4. Add navigation items using the `items` property, specifying icons, labels, and callback functions.
5. For SVG icons, utilize the `RoundedBottomBarSVG` class to provide SVG assets.

**Example:**

```dart
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

```

**Get Started:**

Explore the documentation and examples to seamlessly integrate RoundedBottomBar into your Flutter project and enhance your app's navigation experience.

---


