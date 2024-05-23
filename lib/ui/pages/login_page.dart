
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/welcome_container_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            const WelcomeWidget(),
            Center(
                child: Image.asset('assets/image/car.png',
                    width: 120.sp, height: 128.sp)),
            SizedBox(
              height: 100.sp,
            ),
            CustomTextStyle(text: 'Enter your credentials to login Now!'),
            CustomTextField(
              hintText: 'Enter your phone number',
              suffixText: 'Sent OTP',
            ),
            CustomTextField(
              hintText: 'Enter OTP',
            ),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  context.go(menuPage);
                }
              },
              child: Padding(
                padding: EdgeInsets.all(10.sp),
                child: Container(
                  color: const Color(0xff009D45),
                  width: 350.sp,
                  height: 40.sp,
                  child: Center(
                      child: Text(
                    'Log in ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Urbanist",
                    ),
                  )),
                ),
              ),
            ),
            CustomTextStyle(text: 'Enter 4 digit pin to login !'),
            SizedBox(
              height: 100.sp,
            ),
            Center(
              child: CustomTextStyle(
                text: 'Please provide a registered phone number to login...',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
