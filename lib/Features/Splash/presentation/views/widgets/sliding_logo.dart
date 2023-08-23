import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganimation,
      builder: (BuildContext context, Widget? child) => SlideTransition(
          position: slidinganimation, child: Image.asset(AssetsData.logo)),
    );
  }
}
