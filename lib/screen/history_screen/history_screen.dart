import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/header/header.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_page.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: const Header(title: 'History'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/history_image.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                const Text(
                  'No history yet',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'Hit the orange button down \n below to Create an order',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xffFF460A),
                  minimumSize: const Size(314, 70),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
