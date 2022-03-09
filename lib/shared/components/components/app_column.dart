import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/small_texts.dart';

import '../../styles/colors.dart';
import '../../utils/dimensions.dart';
import '../constants/constants.dart';
import 'big_texts.dart';
import 'icons_and_texts_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.sizeTextFont26,
        ),
        sizedBox(Dimensions.heightSizedBox10, 0.0),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15.0,
                ),
              ),
            ),
            sizedBox(0.0, 10.0),
            const SmallText(text: '4.5'),
            sizedBox(0.0, 10.0),
            const SmallText(text: '1250'),
            sizedBox(0.0, 3.0),
            const SmallText(text: 'comments'),
          ],
        ),
        sizedBox(Dimensions.heightSizedBox20, 0.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const IconsAndTextsWidgets(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            sizedBox(0.0, 10.0),
            const IconsAndTextsWidgets(
              icon: Icons.location_on,
              text: '1.8km',
              iconColor: AppColors.mainColor,
            ),
            sizedBox(0.0, 10.0),
            const IconsAndTextsWidgets(
              icon: Icons.access_time_rounded,
              text: '35min',
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
