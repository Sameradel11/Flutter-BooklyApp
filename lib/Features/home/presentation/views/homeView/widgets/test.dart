import 'package:bookly/Features/home/presentation/views/homeView/widgets/placeholders.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    print("Shimmer Opened");
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ContentPlaceholder(
            lineType: ContentLineType.threeLines,
          ),
          SizedBox(height: 16.0),
          ContentPlaceholder(
            lineType: ContentLineType.twoLines,
          ),
          SizedBox(height: 16.0),
          ContentPlaceholder(
            lineType: ContentLineType.twoLines,
          ),
          SizedBox(height: 16.0),
          ContentPlaceholder(
            lineType: ContentLineType.threeLines,
          ),
        ],
      ),
    );
  }
}
