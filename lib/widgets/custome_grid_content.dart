import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/custom_text_widget.dart';

class customeGridContent extends StatelessWidget {

  final String title;
  final String subTitle;

  const customeGridContent({
    super.key, required this.title, required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min ,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: primaryColor),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomTextWidget(
              text: title,
              Size: 18,
            ),
            CustomTextWidget(
              text: subTitle,
              Size: 13,
              color: Colors.white.withOpacity(0.5),
            )
          ],
        ),
      ],
    );
  }
}