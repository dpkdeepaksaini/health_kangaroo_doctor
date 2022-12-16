import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_kangaroo_doctor/screens/home_screen.dart';
import 'package:health_kangaroo_doctor/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Styles.primeryColor,
      statusBarColor: Styles.primeryColor)); // navigation bar color
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
