import 'package:flutter/material.dart';

class FortuneCookieScreen extends StatefulWidget {
  const FortuneCookieScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FortuneCookieScreenState();
}

class _FortuneCookieScreenState extends State<FortuneCookieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/fortune-cookie.png',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
