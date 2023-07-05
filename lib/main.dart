import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/router/router.dart';
import 'package:study_ui_flutter_tora_2/styles/colors_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeColors.colorBackgroup,
        colorScheme: ColorScheme.fromSeed(seedColor: ThemeColors.colorMain),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.start,
      routes: AppRoutes.routes,
    );
  }
}






