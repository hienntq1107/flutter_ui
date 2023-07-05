import 'package:flutter/material.dart';

class CustomText extends Text {
  CustomText(
    String data, {
    Key? key,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    int? maxLines,
    double? lineHeight,
    double? opacity,
    String? fontFamily,
    TextAlign? textAlign,
  }) : super(
          data,
          key: key,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            height: lineHeight,
          ),
          textAlign: textAlign,
        );
  static CustomText titleCard(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static CustomText title(String text) {
    return CustomText(
      text,
      fontSize: 17,
      fontFamily: 'SF Pro Text',
      color: Colors.black,
    );
  }

  static CustomText nameText(String text) {
    return CustomText(
      text,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  static CustomText emailText(String text) {
    return CustomText(
      text,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(1.0),
      lineHeight: 1.0,
    );
  }

  static CustomText descriptionText(String text) {
    return CustomText(
      text,
      fontSize: 13,
      maxLines: 2,
    );
  }

  static Widget notFoundText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: CustomText(
        text,
        fontSize: 28,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

  static Widget notFoundDesText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 97, vertical: 10),
      child: Wrap(
        children: [
          CustomText(
            text,
            fontSize: 16,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(1.0),
            lineHeight: 1.0,
          ),
        ],
      ),
    );
  }
}
