import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, this.suffixText});
  final String hintText;
  String? suffixText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.sp),
      child: SizedBox(
        height: 45.sp,
        width: 350.sp,
        child: TextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return 'Field is required';
            }
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: InputBorder.none,
              suffixText: suffixText,
              suffixStyle: TextStyle(
                  color: const Color(0xff009D45),
                  fontFamily: "Urbanist",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300),
              hintText: hintText,
              hintStyle: const TextStyle(color: Color(0xffD9D9D9))),
        ),
      ),
    );
  }
}
