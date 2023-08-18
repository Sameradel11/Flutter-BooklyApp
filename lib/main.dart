import 'package:bookly/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(fontFamily: "Poppins", brightness: Brightness.dark)
            .copyWith(
          scaffoldBackgroundColor: KprimaryColor,
        ),
        home: const SplashView());
  }
}
