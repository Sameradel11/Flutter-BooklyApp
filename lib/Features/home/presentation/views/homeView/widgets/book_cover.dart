import "package:flutter/material.dart";

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.testImage,
  });

  final String testImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(right: 16), // Add some spacing between items
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(testImage), // Use the image from the list
        ),
      ),
    );
  }
}
