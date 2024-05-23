
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/payment_bottom.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Generate QR',
        function: () => context.pop(qrPage),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
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
                CustomTextStyle(
                  text: '04:10',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffF14336),
                )
              ],
            ),
          ),
          PaymentBottom(
            function: () {
              context.push(successPage);
            },
          )
        ],
      ),
    );
  }
}
