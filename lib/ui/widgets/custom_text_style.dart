import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class CustomTextStyle extends StatelessWidget {
  CustomTextStyle(
      {super.key,
      required this.text,
      this.fontWeight = FontWeight.w300,
      this.fontSize = 12,
      this.color});
  final String text;
  FontWeight fontWeight;
  double fontSize;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontFamily: "Urbanist",
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color,
        ));
  }
}
