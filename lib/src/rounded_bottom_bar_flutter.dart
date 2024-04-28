import 'package:flutter/material.dart';
import 'package:rounded_bottom_bar_flutter/src/r_b_icon.dart';

import 'app_colors.dart';
import 'icon_model.dart';

class _RoundedBottomBar extends StatelessWidget {
  final int currentIcon;

  final List<IconModel> icons;
  final ValueChanged<int>? onTap;
  final LinearGradient gradient;
  final Color circleColor;
  final Color activeColor;
  final Color unActiveColor;

  const _RoundedBottomBar({
    required this.currentIcon,
    required this.onTap,
    required this.icons, required this.gradient, required this.circleColor, required this.activeColor, required this.unActiveColor,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.white24),
            boxShadow: const [
              BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: icons
              .map(
                (icon) => GestureDetector(
                  onTap: () => onTap?.call(icon.id),
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 900),
                    child: CircleAvatar(
                        backgroundColor: currentIcon == icon.id
                            ? circleColor
                            : Colors.transparent,
                        child: getIcon(icon)),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  getIcon(IconModel icon) {
    Color? color = currentIcon == icon.id ? activeColor : unActiveColor;
    if (icon.icon != null) {
      return RBIcon(
        icon.icon!,
        color: color,
      );
    } else {
      return Icon(
        icon.iconData,
        color: color,
      );
    }
  }
}

class RoundedBottomBarSVG extends StatelessWidget {
  const RoundedBottomBarSVG(
      {super.key,
      required this.currentIcon,
      required this.svgIcons,
      this.onTap,
        this.gradient = AppColors.navBarGradientsColors,
        this.circleColor = AppColors.navBarCircleColor,
        this.activeColor = Colors.white,
        this.unActiveColor = AppColors.unActiveNavBarColor,

      });

  final int currentIcon;
  final List<String> svgIcons;
  final ValueChanged<int>? onTap;
  final LinearGradient gradient;
  final Color circleColor;
  final Color activeColor;
  final Color unActiveColor;

  @override
  Widget build(BuildContext context) {
    return _RoundedBottomBar(
      currentIcon: currentIcon,
      onTap: onTap,
      icons: svgIcons
          .asMap()
          .map((key, value) => MapEntry(key, IconModel(id: key, icon: value)))
          .values
          .toList(),
      circleColor: circleColor,
      activeColor: activeColor,
      unActiveColor: unActiveColor,
      gradient: gradient,
    );
  }
}

class RoundedBottomBar extends StatelessWidget {
  const RoundedBottomBar(
      {super.key,
      required this.currentIcon,
      required this.icons,
      this.onTap,
        this.gradient = AppColors.navBarGradientsColors,
        this.circleColor = AppColors.navBarCircleColor,
        this.activeColor = Colors.white,
        this.unActiveColor = AppColors.unActiveNavBarColor,
      });

  final LinearGradient gradient;
  final Color circleColor;
  final Color activeColor;
  final Color unActiveColor;
  final int currentIcon;
  final List<IconData> icons;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return _RoundedBottomBar(
      currentIcon: currentIcon,
      onTap: onTap,
      icons: icons
          .asMap()
          .map((key, value) =>
              MapEntry(key, IconModel(id: key, iconData: value)))
          .values
          .toList(),
      circleColor: circleColor,
      activeColor: activeColor,
      unActiveColor: unActiveColor,
      gradient: gradient,
    );
  }
}
