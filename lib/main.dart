import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/screens/fortune_cookie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FortuneCookieScreen(),
    );
  }
}
