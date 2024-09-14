import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? Size;
  final Color? color;
  final bool? isfontbold;
  const CustomTextWidget({
    super.key,  required this.text,  this.Size, this.color,  this.isfontbold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color ?? Colors.white,
      fontSize: Size ?? 25,
      fontWeight: isfontbold == true ? FontWeight.bold : FontWeight.normal
    ),);
  }
}

