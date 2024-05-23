import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_style.dart';

class PaymentBottom extends StatelessWidget {
  const PaymentBottom({
    super.key,
    required this.function,
  });
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3.sp),
          width: 352.sp,
          color: const Color(0xffD9D9D9),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomTextStyle(
              text: "Total Rs 75",
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        GestureDetector(
          onTap: function,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 3.sp),
            width: 352.sp,
            height: 33.sp,
            color: const Color(0xff009D45),
            child: Center(
              child: CustomTextStyle(
                text: "Click to Payment",
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
