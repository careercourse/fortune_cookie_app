import 'package:flutter/material.dart';

class FortuneCookieScreen extends StatefulWidget {
  const FortuneCookieScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FortuneCookieScreenState();
}

class _FortuneCookieScreenState extends State<FortuneCookieScreen> {
  @override
  final List<String> _fortunes = [
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Fortune Cookie'),
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
              child: const Text(
                'This is a dummy fortune cookie.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
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
