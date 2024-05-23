
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../router/constant_go_router.dart';
import '../widgets/custom_text_style.dart';
import '../widgets/order_data.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 11.sp),
          child: CustomTextStyle(
            text: 'tanni dabba',
            fontWeight: FontWeight.w500,
            fontSize: 19,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
            icon:const Icon(
              Icons.menu,
              size: 27,
            ),
            onPressed: () {
              context.go(profilePage);
            },
          ),
        ),
        actions: [
          CustomTextStyle(
            text: 'Mathan kumar',
            fontWeight: FontWeight.w400,
            color: const Color(0xff849FFF),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.autorenew,
                size: 18.sp,
              ))
        ],
      ),
      body: ListView(
        children: const [
          OrderOfData(),
          OrderOfData(),
          OrderOfData(),
        ],
      ),
    );
  }
}
