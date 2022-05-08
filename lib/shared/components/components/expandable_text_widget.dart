import 'package:flutter/material.dart';
import 'package:food_delivery/shared/components/components/small_texts.dart';
import 'package:food_delivery/shared/utils/dimensions.dart';

import '../../styles/colors.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              size: Dimensions.fontSize16,
              text: firstHalf,
              color: AppColors.paraColor,
            )
          : Column(
              children: [
                SmallText(
                  height: 1.8,
                  size: Dimensions.fontSize16,
                  color: AppColors.paraColor,
                  text: hiddenText
                      ? (firstHalf + '....')
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      const SmallText(
                        text: 'Show more',
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down_rounded
                            : Icons.arrow_drop_up_rounded,
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
