import 'package:flutter/material.dart';

class FortuneCookie extends StatelessWidget {
  const FortuneCookie({super.key, required this.randomFortune});

  final Function() randomFortune;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: randomFortune,
      child: Image.asset(
        'assets/images/fortune-cookie.png',
        height: 200,
      ),
    );
  }
}
