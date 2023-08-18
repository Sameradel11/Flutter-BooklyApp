import 'package:flutter/cupertino.dart';

import '../home_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SizedBox(height: 50),
      CustomAppBar(),
    ]);
  }
}