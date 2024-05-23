

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/payment_bottom.dart';

class SuccessfulyPage extends StatelessWidget {
  const SuccessfulyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Generate QR',
        function: () => context.pop(qrPage),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: Column(children: [
                    CustomTextStyle(
                      text: 'Scan the QR to pay the payment',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    Image.asset(
                      'assets/image/QrCode.png',
                      width: 236.sp,
                      height: 236.sp,
                      fit: BoxFit.fill,
                      color: Colors.black,
                    ),
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/true.png',
                    width: 183.sp,
                    height: 183.sp,
                    fit: BoxFit.fill,
                  ),
                  CustomTextStyle(
                    text: 'Success !',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
            ],
          )),
          PaymentBottom(
            function: () {},
          )
        ],
      ),
    );
  }
}
