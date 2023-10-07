import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
            'json/rocket_animation.json', // Replace with your Lottie file path
            width: 200,
            height: 200,
            fit: BoxFit.fill),
      ),
    );
  }
}
