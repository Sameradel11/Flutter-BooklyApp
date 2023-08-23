import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          enabledBorder: customBorder(),
          focusedBorder: customBorder()),
    );
  }
}

OutlineInputBorder customBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
      borderSide: const BorderSide(color: Colors.white));
}
