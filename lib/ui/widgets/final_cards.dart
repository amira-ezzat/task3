import 'package:flutter/material.dart';

import 'custom_text_style.dart';

class FinalCards extends StatelessWidget {
  FinalCards(
      {super.key,
      required this.text,
      this.topPadding = 8,
      this.color = Colors.white,
      this.fontColor = Colors.black,
      required this.imageName,
      this.anotherText,
      this.fontWeight = FontWeight.w500,
      required this.imageWidth,
      required this.imageHight , this.nextPage});
  double topPadding;
  Color color;
  final String text;
  Color fontColor;
  String? anotherText;
  final String imageName;
  FontWeight fontWeight;
  final double imageWidth;
  final double imageHight;
  void Function() ? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:nextPage,
      child: Card(
        color: color,
        surfaceTintColor: Colors.white12,
        shape: const RoundedRectangleBorder(),
        margin: EdgeInsets.only(top: topPadding),
        elevation: 0.3,
        child: SizedBox(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Image.asset(
                  imageName,
                  width: imageWidth,
                  height: imageHight,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 12,
                ),
                CustomTextStyle(
                  text: text,
                  fontSize: 13,
                  fontWeight: fontWeight,
                  color: fontColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 135.0,
                  ),
                  child: CustomTextStyle(
                    text: anotherText ?? '',
                    color: const Color(0xffA1D929),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
