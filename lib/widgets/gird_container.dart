import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/custom_text_widget.dart';
import 'circle_btn.dart';

class gridContainerWidget extends StatelessWidget {

  final String primaryText;
  final String secondaryText;
  final IconData icon;
  final Color? containerBgColor;
  final Color? iconColor;
  final Color? iconBgColor;

  const gridContainerWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.primaryText, required this.secondaryText, required this.icon, this.containerBgColor, this.iconColor, this.iconBgColor,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: screenHeight * .26,
            width: screenWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: containerBgColor ?? primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child:  customCircleBtn(
                    iconBgColor: iconBgColor ?? const Color(0xffB9CF30),
                    icon: icon ?? Icons.directions_run_outlined,
                  ),
                ),
                CustomTextWidget(
                  text: primaryText,
                  Size: 17,
                  color: containerBgColor == primaryColor ? secondaryColor : Colors.white,
                ),
                 CustomTextWidget(
                  text: secondaryText,
                  Size: 30,
                  color: containerBgColor == primaryColor ? secondaryColor : Colors.white,
                  isfontbold: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
