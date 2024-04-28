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

RoundedBottomBar for Flutter is a sleek and adaptable Flutter package crafted to simplify the integration of rounded bottom navigation bars into Flutter applications. With its contemporary design and robust features, this package enables developers to seamlessly incorporate rounded bottom navigation bars, supporting both SVG icons via RoundedBottomBarSVG and icon data via RoundedBottomBar.
![Uploading gif.gif…]()

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
import 'package:rounded_bottom_bar/rounded_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rounded Bottom Bar Demo'),
        ),
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
        bottomNavigationBar: RoundedBottomBar(
          items: [
            RoundedBottomBarItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                // Handle navigation to the home screen
              },
            ),
            RoundedBottomBarItem(
              icon: RoundedBottomBarSVG('assets/home_icon.svg'),
              text: 'Profile',
              onTap: () {
                // Handle navigation to the profile screen
              },
            ),
            // Add more navigation items as needed
          ],
        ),
      ),
    );
  }
}
```

**Get Started:**

Explore the documentation and examples to seamlessly integrate RoundedBottomBar into your Flutter project and enhance your app's navigation experience.

---


