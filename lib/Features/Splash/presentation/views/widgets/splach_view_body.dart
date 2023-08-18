import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_logo.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState()  {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();

  }

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
          SlidingLogo(slidinganimation: slidinganimation)
        ]);
  }
}
