import 'package:flutter/material.dart';

import 'custom_text_style.dart';

class CustomerAddress extends StatelessWidget {
  const CustomerAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle(
                  text: 'Address:',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextStyle(
                  text: 'No. Block B, F23, ABCD Apartmen:',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                CustomTextStyle(
                  text: 'Rajaji Street, Velachery -600 000',
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          )
          ;
  }
}