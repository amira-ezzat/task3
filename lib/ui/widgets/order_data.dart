
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'bottom_view_details.dart';
import 'order_data_widget.dart';

class OrderOfData extends StatelessWidget {
  const OrderOfData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 352.sp,
      height: 123.sp,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContainerOrderOfData(),
          BottomViewDetails(),
        ],
      ),
    );
  }
}
