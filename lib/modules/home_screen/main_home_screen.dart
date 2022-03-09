import 'package:flutter/material.dart';
import 'package:food_delivery/modules/food_screen/main_food_screen.dart';
import 'package:food_delivery/shared/components/components/big_texts.dart';
import 'package:food_delivery/shared/components/components/small_texts.dart';
import 'package:food_delivery/shared/styles/colors.dart';

import '../../shared/components/constants/constants.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    //printFullText('Current Height = ${MediaQuery.of(context).size.height}');
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //showing Header
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BigText(
                        text: 'Egypt',
                        color: AppColors.mainColor,
                        size: 30.0,
                      ),
                      sizedBox(2.0, 0.0),
                      Row(
                        children: [
                          sizedBox(0.0, 5.0),
                          const SmallText(
                            text: 'Mansoura',
                            color: AppColors.smallTextColor,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //showing body
            const Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: FoodBodyScreen(),
              ),
            ),
            // sizedBox(5.0, 0.0),
          ],
        ),
      ),
    );
  }
}
