import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  const AppIcon({
    Key? key,
    required this.iconData,
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0xFF756d54),
    this.size = 40,
    this.iconSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
