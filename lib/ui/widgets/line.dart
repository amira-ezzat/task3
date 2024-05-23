import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Line extends StatelessWidget {
   Line({super.key , this.padding = 16});
   double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff3E3E3E40),
      width: 312.sp,
      height: 1.sp,
      margin: EdgeInsets.all(padding.sp),
    );
  }
}
