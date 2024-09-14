import 'package:flutter/widgets.dart';

import '../utils/custom_text_widget.dart';

class icon_text_widget extends StatelessWidget {

  final IconData icon;
  final String text;
  final double fontSize;
  final Color color;

  const icon_text_widget({
    super.key, required this.icon, required this.text, required this.fontSize, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        CustomTextWidget(text: text,
        Size: fontSize,
        color: color,
        )
      ],
    );
  }
}