
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/delivery_data_widget.dart';

class DeliveryReportPage extends StatelessWidget {
  const DeliveryReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Delivery Report',
          function: () {
            context.pop(deliveryPage);
          }),
      body: Column(
        children: [
          const Expanded(
            child: Column(
              children: [
                DeliveryDataWidget(),
                DeliveryDataWidget(),
                DeliveryDataWidget(),
                DeliveryDataWidget(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 4),
            height: 82.sp,
            color: const Color(0xffD9D9D9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextStyle(
                    text: 'Total Can: 08',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomTextStyle(
                    text: 'Total Price: 225',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
