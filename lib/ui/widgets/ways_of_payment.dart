import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_style.dart';

class WaysOfPayment extends StatelessWidget {
   WaysOfPayment({super.key, required this.text,  this.function, required this.icon});
final  String text ;
 void Function()? function ;
final IconData icon ;  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: function,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: Row(
                children: [
                  Icon(
                   icon,
                    size: 38.sp,
                    color: const Color(0xff779FE5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: CustomTextStyle(
                      text: text,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          );
  }
}