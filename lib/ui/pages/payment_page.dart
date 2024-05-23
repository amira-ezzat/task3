
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/line.dart';
import '../widgets/payment_bottom.dart';
import '../widgets/ways_of_payment.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment',
        function: () => context.pop(paymentPage),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.sp,
          ),
          Expanded(
            child: Column(
              children: [
                WaysOfPayment(
                    text: 'Generate QR',
                    function: () => context.push(qrPage),
                    icon: Icons.qr_code_2),
                Line(
                  padding: 24,
                ),
                WaysOfPayment(
                    text: 'Cash on delivery', icon: Icons.payments_outlined),
                Line(
                  padding: 24,
                ),
              ],
            ),
          ),
          PaymentBottom(
            function: () => context.push(qrPage),
          ),
        ],
      ),
    );
  }
}
