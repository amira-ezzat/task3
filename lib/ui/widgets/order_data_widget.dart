
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_style.dart';

class ContainerOrderOfData extends StatelessWidget {
  const ContainerOrderOfData({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 26.sp),
          child: CustomTextStyle(
            text: 'Delivery #1',
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 27.sp),
          child: Row(
            children: [
              SizedBox(
                width: 49.sp,
                height: 46.sp,
                child: Image.asset(
                  'assets/image/water.jpg',
                  width: 40,
                  height: 35,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextStyle(
                    text: 'Tanni Dabba',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextStyle(
                    text: '20 Litre Pack of 2x1',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomTextStyle(
                    text: 'Time : 12:00pm - 12:30pm',
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff009D45),
                  ),
                ],
              )
            ],
          ),
        ),
      
      ],
    );
  }
}
