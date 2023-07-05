import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_ui_flutter_tora_2/router/router.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      splashRadius: 24.0,
      onPressed: () {
      },
      icon: Image.asset('assets/images/menu_appbar.png'),
    ),
    actions: [
      IconButton(
        splashRadius: 24.0,
        icon:  SvgPicture.asset(
          'assets/images/svg/shopping-cart.svg'
        ),
        onPressed: () {
           Navigator.pushNamed(context, AppRoutes.order);
        },
      ),
    ],
  );
}