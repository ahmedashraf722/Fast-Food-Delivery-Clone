import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/app_icon.dart';
import 'package:food_delivery/shared/components/components/big_texts.dart';
import 'package:food_delivery/shared/styles/colors.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../shared/components/components/expandable_text_widget.dart';

class PopularFoodCharacteristics extends StatelessWidget {
  const PopularFoodCharacteristics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              leadingWidth: double.maxFinite,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: const AppIcon(iconData: Icons.close),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: const [
                      AppIcon(iconData: Icons.shopping_cart_outlined),
                    ],
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(bottom: 10, top: 5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: BigText(
                      size: Dimensions.sizeTextFont26,
                      text: 'Chinese Side',
                    ),
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/food0.png',
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.widthSizedBox20),
                    child: const ExpandableText(
                      text:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
                          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
                          'It has survived not only five centuries, but also the leap into electronic typesetting,'
                          'remaining essentially unchanged.'
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
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.heightSizedBox10,
                bottom: Dimensions.heightSizedBox10,
                left: Dimensions.widthSizedBox30 * 5.5,
                right: Dimensions.widthSizedBox30 * 5.5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    iconData: Icons.remove,
                    size: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                  ),
                  BigText(
                    text: '\$12.88 ' ' X' '  0',
                    color: AppColors.mainBlackColor,
                    size: Dimensions.sizeTextFont20,
                  ),
                  AppIcon(
                    iconData: Icons.add,
                    size: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                  ),
                ],
              ),
            ),
            Container(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                      size: 40,
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
                      child: BigText(
                        text: '\$10 | Add to cart',
                        color: Colors.white,
                        size: Dimensions.sizeTextFont20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
