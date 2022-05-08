import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/app_column.dart';
import 'package:food_delivery/shared/components/components/app_icon.dart';
import 'package:food_delivery/shared/components/components/expandable_text_widget.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../shared/components/components/big_texts.dart';
import '../../shared/components/constants/constants.dart';
import '../../shared/styles/colors.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
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
          // icon widgets
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
                  child: const AppIcon(iconData: Icons.arrow_back_ios_outlined),
                ),
                const AppIcon(iconData: Icons.add_shopping_cart_outlined),
              ],
            ),
          ),
          // introductions food name and price ...
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
                sizedBox(Dimensions.heightSizedBox20, 0.0),
                // expandable text food items
                const Expanded(
                  child: SingleChildScrollView(
                    child: ExpandableText(
                      text:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomNavigationBarHeight,
        padding: EdgeInsets.only(
          left: Dimensions.widthSizedBox20,
          right: Dimensions.widthSizedBox20,
          top: Dimensions.heightSizedBox20,
          bottom: Dimensions.heightSizedBox20,
        ),
        decoration: const BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.widthSizedBox10,
                right: Dimensions.widthSizedBox10,
                top: Dimensions.heightSizedBox20,
                bottom: Dimensions.heightSizedBox20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  const Icon(Icons.remove, color: AppColors.signColor),
                  sizedBox(0.0, Dimensions.widthSizedBox10 / 2),
                  const BigText(text: '0', color: AppColors.signColor),
                  sizedBox(0.0, Dimensions.widthSizedBox10 / 2),
                  const Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.widthSizedBox10,
                right: Dimensions.widthSizedBox10,
                top: Dimensions.heightSizedBox20,
                bottom: Dimensions.heightSizedBox20,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
