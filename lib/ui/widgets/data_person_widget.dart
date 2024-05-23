import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'custom_text_style.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Container(
        width: 332.sp,
        height: 250.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/image/person.jpg'),
                backgroundColor: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 16.0),
              child: Column(
                children: [
                  CustomTextStyle(
                    text: 'Tanni Dabba',
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                  CustomTextStyle(
                    text: '+91-2345615468',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextStyle(
                    text: 'tannidabba@gmail.com',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextStyle(
                    text: 'Edit Profile>',
                    fontSize: 11,
                    color: const Color(0xff4200CE),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
