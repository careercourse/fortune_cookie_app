import 'dart:math';

import 'package:flutter/material.dart';

class FortuneCookieScreen extends StatefulWidget {
  const FortuneCookieScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FortuneCookieScreenState();
}

class _FortuneCookieScreenState extends State<FortuneCookieScreen> {
  final List<String> _fortunes = [
    "Click the icon to know your fortune",
    "Opportunities are endless when you seize them with courage.",
    "A journey of a thousand miles begins with a single step.",
    "Your kindness will lead you to unexpected blessings.",
    "Believe in yourself and others will too.",
    "Wisdom is found not in knowing all the answers, but in asking the right questions.",
    "Embrace change, for it is the only constant in life.",
    "The best way to predict the future is to create it.",
    "Happiness is not a destination, but a way of life.",
    "Good things come to those who wait, but better things come to those who work for it.",
    "Your smile is a key to unlock happiness in others."
  ];

  int _index = 0;

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
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                _fortunes[_index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                setState(() {
                  _index = Random().nextInt(_fortunes.length - 1) + 1;
                  print(_index);
                });
              },
              child: Image.asset(
                'assets/images/fortune-cookie.png',
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
