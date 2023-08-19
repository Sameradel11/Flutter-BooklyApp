import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(children: [
        Image.asset(
          AssetsData.logo, height: 16,
          // scale: 3,
        ),
        const Spacer(
          flex: 8,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
            )),
        const Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
