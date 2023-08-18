import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        AssetsData.logo,
        scale: 3,
      ),
      const Spacer(
        flex: 8,
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 35,
          )),
      const Spacer(
        flex: 1,
      ),
    ]);
  }
}
