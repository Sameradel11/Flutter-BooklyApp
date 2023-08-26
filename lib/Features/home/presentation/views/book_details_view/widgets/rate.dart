import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({
    super.key,
    required this.avgrating,
    required this.count,
  });
  final String avgrating;
  final String count;
  @override
  Widget build(BuildContext context) {
    bool norating = false;
    if (avgrating == '0' || count == '0') {
      norating = true;
    }
    return norating
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                " No Rating",
                style: Style.textStyle18.copyWith(color: Colors.white),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                avgrating,
                style: Style.textstyle18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "($count)",
                style: Style.textStyle16,
              ),
            ],
          );
  }
}
