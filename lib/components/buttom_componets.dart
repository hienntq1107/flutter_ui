import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/router/routerlinks.dart';


class CustomButton extends StatelessWidget {
  final RouterLinks routerLink;

  const CustomButton({Key? key, required this.routerLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffFF460A),
        minimumSize: const Size(314, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
      onPressed: () {
        // callback function
        Navigator.pushNamed(context, routerLink.linkRouter);
      },
      child: Text(
        routerLink.title,
        style: const TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}