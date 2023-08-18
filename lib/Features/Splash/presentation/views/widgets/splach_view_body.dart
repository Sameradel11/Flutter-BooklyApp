import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Welcome To",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Image.asset(AssetsData.logo)
        ]);
  }
}
