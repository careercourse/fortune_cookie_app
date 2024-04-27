import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_cookie_app/data/fortunes.dart';
import 'package:fortune_cookie_app/presentation/widgets/fortune_cookie.dart';
import 'package:fortune_cookie_app/presentation/widgets/fortune_text.dart';

class FortuneCookieScreen extends StatefulWidget {
  const FortuneCookieScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FortuneCookieScreenState();
}

class _FortuneCookieScreenState extends State<FortuneCookieScreen> {
  int _index = 0;

  void _randomFortuneGenerator() {
    setState(() {});
    _index = Random().nextInt(fortunes.length - 1) + 1;
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'FORTUNE COOKIE',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 4,
            wordSpacing: 8,
          ),
        ),
      ),
      body: Container(
        color: Colors.deepOrange,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FortuneText(index: _index),
            const SizedBox(height: 16),
            FortuneCookie(
              randomFortune: _randomFortuneGenerator,
            ),
          ],
        ),
      ),
    );
  }
}
