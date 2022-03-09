import 'package:flutter/material.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const AppIcon({
    Key? key,
    required this.iconData,
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0xFF756d54),
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: iconColor,
          size: Dimensions.screenHeight / 45.5,
        ),
      ),
    );
  }
}
