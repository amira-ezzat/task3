import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 360.sp,
            height: 146.sp,
            color: const Color(0xffF2FFEE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff3E3E3E)),
                )
              ],
            ),
          )
          ;
  }
}