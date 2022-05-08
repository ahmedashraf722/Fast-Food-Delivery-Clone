import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.60;
  static double pageViewContainer = screenHeight / 3.68;
  static double pageViewTextContainer = screenHeight / 6.32;

  //dynamic height
  static double heightSizedBox10 = screenHeight / 83;
  static double heightSizedBox20 = screenHeight / 41.5;
  static double heightSizedBox30 = screenHeight / 28;

  //dynamic width
  static double widthSizedBox10 = screenWidth / 83;
  static double widthSizedBox20 = screenWidth / 41.5;
  static double widthSizedBox30 = screenWidth / 28;

  //dynamic fontSize
  static double fontSize16 = screenHeight / 52.75;
  static double sizeTextFont20 = screenHeight / 41.5;
  static double sizeTextFont26 = screenHeight / 31.5;

  // icon size
  static double iconSize16 = screenHeight / 52.75;
  static double iconSize24 = screenHeight / 35.17;

  //bottomNavigationBarHeight
  static double bottomNavigationBarHeight = screenHeight / 7.04;
}
