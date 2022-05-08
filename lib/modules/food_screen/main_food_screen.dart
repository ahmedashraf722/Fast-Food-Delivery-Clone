import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/app_column.dart';
import 'package:food_delivery/shared/components/components/big_texts.dart';
import 'package:food_delivery/shared/components/components/icons_and_texts_widgets.dart';
import 'package:food_delivery/shared/components/components/small_texts.dart';
import 'package:food_delivery/shared/components/constants/constants.dart';
import 'package:food_delivery/shared/styles/colors.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';
import 'package:get/get.dart';

import '../popular_food_characteristics_screen/popular_food_characteristics_screen.dart';
import '../popular_food_detail_screen/popular_food_detail.dart';

class FoodBodyScreen extends StatefulWidget {
  const FoodBodyScreen({Key? key}) : super(key: key);

  @override
  _FoodBodyScreenState createState() => _FoodBodyScreenState();
}

class _FoodBodyScreenState extends State<FoodBodyScreen> {
  PageController pageController = PageController(viewportFraction: 0.84);
  var _currentPage = 0.0;
  var scaleFactor = 0.8;
  var height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!;
        // print('current Page + $_currentPage');
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          //slider Page
          SizedBox(
            height: Dimensions.pageView,
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildItemBody(index);
              },
            ),
          ),
          //dots
          DotsIndicator(
            dotsCount: 5,
            position: _currentPage,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          //popular text
          sizedBox(Dimensions.heightSizedBox20, 0.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const BigText(
                  text: 'Popular',
                ),
                sizedBox(0.0, 10.0),
                const Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: BigText(
                    text: '.',
                  ),
                ),
                sizedBox(0.0, 10.0),
                const SmallText(
                  text: 'Food Selecting',
                  height: 1.8,
                ),
              ],
            ),
          ),
          //List food and imageFood
          sizedBox(Dimensions.heightSizedBox10, 0.0),
          _buildListItem(context),
          sizedBox(35.0, 0.0),
        ],
      ),
    );
  }

  _buildItemBody(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == _currentPage.floor()) {
      var currentScale = 1 - (_currentPage - index) * (1 - scaleFactor);
      var currentHeight = height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(
          0,
          currentHeight,
          0,
        );
    } else if (index == _currentPage.floor() + 1) {
      var currentScale =
          scaleFactor + (_currentPage - index + 1) * (1 - scaleFactor);
      var currentHeight = height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(
          0,
          currentHeight,
          0,
        );
    } else if (index == _currentPage.floor() - 1) {
      var currentScale = 1 - (_currentPage - index) * (1 - scaleFactor);
      var currentHeight = height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(
          0,
          currentHeight,
          0,
        );
    } else {
      var currentScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(
          0,
          height * (1 - scaleFactor) / 2,
          1,
        );
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food0.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                bottom: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0xFFe8e8e8),
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: const AppColumn(
                  text: 'Egyption Side',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildListItem(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.5),
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              //image food
              InkWell(
                onTap: () {
                  Get.to(const PopularFoodDetail());
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/food12.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //text container food
              Expanded(
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sizedBox(Dimensions.heightSizedBox10, 0.0),
                        const BigText(text: 'Salad and Fruit meal in Egyption'),
                        sizedBox(Dimensions.heightSizedBox10, 0.0),
                        InkWell(
                          onTap: () {
                            Get.to(const PopularFoodCharacteristics());
                          },
                          child: const SmallText(
                            text: 'With Egyption Characteristics',
                          ),
                        ),
                        sizedBox(Dimensions.heightSizedBox10, 0.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const IconsAndTextsWidgets(
                              icon: Icons.circle_sharp,
                              text: 'Normal',
                              iconColor: AppColors.iconColor1,
                            ),
                            sizedBox(0.0, 2.0),
                            const IconsAndTextsWidgets(
                              icon: Icons.location_on,
                              text: '1.8km',
                              iconColor: AppColors.mainColor,
                            ),
                            sizedBox(0.0, 2.0),
                            const IconsAndTextsWidgets(
                              icon: Icons.access_time_rounded,
                              text: '35min',
                              iconColor: AppColors.iconColor2,
                            ),
                            sizedBox(0.0, 2.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return sizedBox(2.0, 0.0);
      },
      itemCount: 8,
    );
  }
}
