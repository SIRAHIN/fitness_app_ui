import 'package:flutter/material.dart';

import '../utils/colors.dart';

class customCircleBtn extends StatelessWidget {

  final IconData icon;
  final double? rediusSize;
  final Color? iconBgColor;
  final Color? iconColor;

  const customCircleBtn({
    super.key,
    required this.icon,
    this.rediusSize,
    this.iconBgColor,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: rediusSize ?? 30,
      backgroundColor: iconBgColor ?? btnBackgrounColor,
      child: IconButton(onPressed: () {
      }, icon: Icon(icon, color: iconColor ?? Colors.white,)
      ),
    );
  }
}