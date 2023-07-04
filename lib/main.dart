import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/home_screen/home_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/order_screen/order_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/profile_screen/profile_screen.dart';
import 'package:study_ui_flutter_tora_2/screen/start_screen/start_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: StartScreen.routeName, 
      routes: {
        StartScreen.routeName: (context) => const StartScreen(),
        "home": (context) => const HomeScreen(),
        "order": (context) => const OrderPage(),
        "profile": (context) => const ProfilePage(),
      },
    );
  }
}