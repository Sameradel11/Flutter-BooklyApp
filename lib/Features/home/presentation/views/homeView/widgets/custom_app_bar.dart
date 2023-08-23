import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';

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
          AssetsData.logo,
          height: 16,
        ),
        const Spacer(
          flex: 8,
        ),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
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
