import 'package:flutter/material.dart';

class BoxSize extends SizedBox {
  const BoxSize({
    double? width, 
    double? height, 
    Key? key,
    double? size,
    })
      : super(
          key: key,
          width: width,
          height: height,
        );
  static SizedBox sizedBoxWH(double size) {
    return SizedBox(width: size,height: size,);
  }

  static SizedBox sizedBoxW8() {
    return const SizedBox(width: 8);
  }

  static SizedBox sizedBoxH8() {
    return const SizedBox(height: 8);
  }

  static SizedBox sizedBoxW10() {
    return const SizedBox(width: 10);
  }

  static SizedBox sizedBoxH10() {
    return const SizedBox(height: 10);
  }

  static SizedBox sizedBoxW12() {
    return const SizedBox(width: 12);
  }

  static SizedBox sizedBoxH12() {
    return const SizedBox(height: 12);
  }

  static SizedBox sizedBoxW15() {
    return const SizedBox(width: 15);
  }

  static SizedBox sizedBoxH15() {
    return const SizedBox(height: 15);
  }

  static SizedBox sizedBoxW20() {
    return const SizedBox(width: 20);
  }

  static SizedBox sizedBoxH20() {
    return const SizedBox(height: 20);
  }

  static SizedBox sizedBoxW30() {
    return const SizedBox(width: 30);
  }

  static SizedBox sizedBoxH30() {
    return const SizedBox(height: 30);
  }
}
