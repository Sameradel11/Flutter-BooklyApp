import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(
          " 4.8",
          style: Style.textstyle18,
        ),
        Text(
          " (2390)",
          style: Style.textStyle16,
        ),
      ],
    );
  }
}
