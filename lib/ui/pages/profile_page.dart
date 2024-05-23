
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:task_3/Settings/changeNumber/setting.dart';

import '../../Settings/changeNumber/payment.dart';
import '../../router/constant_go_router.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/data_person_widget.dart';
import '../widgets/final_cards.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar:
          CustomAppBar(title: 'Profile', function: () => context.go(menuPage)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const PersonWidget(),
              FinalCards(
                imageName: 'assets/image/CheckedIdentificationDocuments.png',
                topPadding: 14,
                text: 'Emp ID',
                fontWeight: FontWeight.w400,
                anotherText: '#ETD00-01',
                imageWidth: 31,
                imageHight: 26,
              ),
              FinalCards(
                text: 'Delivery History',
                imageName: 'assets/image/Delivery.png',
                imageWidth: 30,
                imageHight: 44,
                nextPage: () {
                  context.push(deliveryPage);
                },
              ),
              FinalCards(
                text: 'Payment History',
                imageName: 'assets/image/BhimUpi.png',
                imageHight: 30,
                imageWidth: 30,
                nextPage: () {
                  context.push(paymentHistory);
                },
              ),
              FinalCards(
                text: 'Settings',
                imageName: 'assets/image/UserSettings.png',
                imageWidth: 30,
                imageHight: 30,
                nextPage: () {
                  context.push(settings);
                },
              ),
              SizedBox(
                height: 120.sp,
              ),
              FinalCards(
                imageName: 'assets/image/logout.png',
                text: 'Logout...',
                color: Colors.red,
                fontColor: Colors.white,
                fontWeight: FontWeight.w800,
                imageWidth: 25,
                imageHight: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
