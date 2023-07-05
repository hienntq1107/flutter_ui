import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({
    Key? key,
    required this.title,
    this.backPress,
    this.color,
  }) : super(key: key);

  final String title;
  final VoidCallback? backPress;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffF5F5F8),
      leading: Align(
        alignment: Alignment.center,
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (backPress != null) {
              backPress!();
            } else {
              Navigator.of(context).pushReplacement(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomeScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1.0, 0.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        const  SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}