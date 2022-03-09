import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/small_texts.dart';
import 'package:food_delivery/shared/components/constants/constants.dart';

class IconsAndTextsWidgets extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconsAndTextsWidgets({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        sizedBox(0.0, 5.0),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
