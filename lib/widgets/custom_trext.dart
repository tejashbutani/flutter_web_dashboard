import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomText({Key? key, required this.text,  this.size,  this.color,  this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        fontSize: size ?? 16,
      ),
    );
  }
}
