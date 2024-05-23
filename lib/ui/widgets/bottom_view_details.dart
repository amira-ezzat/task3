
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import 'custom_text_style.dart';

class BottomViewDetails extends StatelessWidget {
  const BottomViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () {
              context.push(detailsPage);
            },
            child: Container(
              margin: EdgeInsets.only(left: 3.sp, right: 3.sp),
              width: 352.sp,
              height: 33.sp,
              color: const Color(0xffD9D9D9),
              child: Center(
                child: CustomTextStyle(
                  text: 'View details',
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          );
  }
}