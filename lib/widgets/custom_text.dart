import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomText(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size ?? 15,
            color: color ?? Colors.black,
            fontWeight: fontWeight ?? FontWeight.normal));
  }
}
