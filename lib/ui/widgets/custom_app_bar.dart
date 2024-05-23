import 'package:flutter/material.dart';

import 'custom_text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    super.key,
    required this.title,
    required this.function,
  }) : preferredSize = Size.fromHeight(50.0);
  final Size preferredSize;
  final String title;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: function,
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: CustomTextStyle(
        text: title,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      titleSpacing: 0.1,
    );
  }
}