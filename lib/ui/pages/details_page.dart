
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/customer_address.dart';
import '../widgets/line.dart';
import '../widgets/order_data_widget.dart';
import '../widgets/payment_bottom.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Delivery #1',
        function: () {
          context.pop(detailsPage);
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ContainerOrderOfData(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 20),
                      child: Image.asset(
                        'assets/image/Phone.png',
                        width: 34.sp,
                        height: 34.sp,
                      ),
                    ),
                  ],
                ),
                Line(),
                const CustomerAddress(),
                Line(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: CustomTextStyle(
                    text: 'Upload Location',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20.sp, right: 20.sp, top: 20.sp),
                  width: 313.sp,
                  height: 28.sp,
                  color: const Color(0xffD9D9D9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: CustomTextStyle(
                          text: 'Location',
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff3E3E3E54),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.ios_share_outlined,
                            size: 18,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 55.sp,
            width: 352.sp,
            child: PaymentBottom(
              function: () => context.push(paymentPage),
            ),
          )
        ],
      ),
    );
  }
}
