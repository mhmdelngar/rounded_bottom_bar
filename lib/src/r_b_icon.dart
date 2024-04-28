import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RBIcon extends StatelessWidget {
  const RBIcon(
      this.icon, {
        this.color,
        this.width,
        this.height,
        super.key,
      });

  final String icon;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    // final path = 'assets/images/svg/icons/$icon.svg';
    return SvgPicture.asset(
      icon,
      width: width,
      height: height,
      colorFilter:
      color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}

