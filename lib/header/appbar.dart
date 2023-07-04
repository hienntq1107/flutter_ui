import 'package:flutter/material.dart';

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
        icon: const Icon(
          Icons.shopping_cart_rounded,
          color: Colors.grey,
        ),
        onPressed: () {
           Navigator.pushNamed(context, "order");
        },
      ),
    ],
  );
}