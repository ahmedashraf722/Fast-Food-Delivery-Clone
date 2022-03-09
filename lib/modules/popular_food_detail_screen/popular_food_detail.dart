import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/app_column.dart';
import 'package:food_delivery/shared/components/components/app_icon.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../shared/components/components/big_texts.dart';
import '../../shared/components/components/small_texts.dart';
import '../../shared/components/constants/constants.dart';
import '../../shared/styles/colors.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 375,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/food0.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            top: Dimensions.screenHeight / 18,
            left: Dimensions.screenHeight / 36,
            right: Dimensions.screenHeight / 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const AppIcon(iconData: Icons.arrow_back_ios),
                ),
                const AppIcon(iconData: Icons.add_shopping_cart_outlined),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: Dimensions.screenHeight / 1.5,
            margin: EdgeInsets.only(top: Dimensions.screenHeight / 2.45),
            padding: EdgeInsets.only(
              left: Dimensions.screenHeight / 40,
              right: Dimensions.screenHeight / 40,
              top: Dimensions.heightSizedBox20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppColumn(text: 'Egyption Side'),
                sizedBox(Dimensions.heightSizedBox20, 0.0),
                BigText(
                  text: 'Introduce',
                  size: Dimensions.sizeTextFont20,
                ),
                sizedBox(Dimensions.heightSizedBox30, 0.0),
                const SmallText(
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                      'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                      'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
                      'It has survived not only five centuries, but also the leap into electronic typesetting,'
                      'remaining essentially unchanged.'
                      'It has survived not only five centuries, but also the leap into electronic typesetting,'
                      'It has survived not only five centuries, but also the leap into electronic typesetting.',
                ),
                sizedBox(Dimensions.heightSizedBox10, 0.0),
                Row(
                  children: const [
                    SmallText(
                      text: 'Show more',
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
                sizedBox(Dimensions.screenHeight / 10, 0.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SmallText(
                      text: 'Show more',
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
