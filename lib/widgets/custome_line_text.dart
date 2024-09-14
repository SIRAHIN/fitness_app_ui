import 'package:flutter/material.dart';

import '../utils/custom_text_widget.dart';

class CustomeLineWithText extends StatelessWidget {
  CustomeLineWithText(
      {super.key,
      required this.screenWidth,
      required this.numberText,
      required this.isLineTure});

  final double screenWidth;
  final String numberText;
  bool isLineTure;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 7,
          width: screenWidth,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(8),
            color: isLineTure ? Colors.black : Colors.black.withOpacity(0.3),
          ),
        ),
        CustomTextWidget(
          text: numberText,
          Size: 17,
          color: isLineTure ? Colors.black : Colors.black.withOpacity(0.5),
          isfontbold: true,
        )
      ],
    );
  }
}
