
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_style.dart';
import 'line.dart';

class DeliveryDataWidget extends StatelessWidget {
  const DeliveryDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 70.sp,
            width: 308.sp,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextStyle(
                        text: 'Tanni Dabba',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTextStyle(
                        text: 'Delivered #10',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  CustomTextStyle(
                    text: '20 Litre Pack of 2x1',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextStyle(
                        text: 'Delivered on: 12.35PM',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff009D45),
                      ),
                      CustomTextStyle(
                        text: 'Price:75',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffF14336),
                      ),
                    ],
                  ),
                  CustomTextStyle(
                    text: 'Location: Velachery',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            )),
        Line(),
      ],
    );
  }
}
