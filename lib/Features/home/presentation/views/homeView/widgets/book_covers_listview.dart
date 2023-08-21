import 'package:flutter/material.dart';

import 'book_cover.dart'; // Make sure to import the correct package

class BookCoversListView extends StatefulWidget {
  const BookCoversListView({Key? key}) : super(key: key);

  @override
  State<BookCoversListView> createState() => _BookCoversListViewState();
}

class _BookCoversListViewState extends State<BookCoversListView> {
  @override
  Widget build(BuildContext context) {
    const List<String> testImages = [
      "Assets/Images/photo1.jpg",
      "Assets/Images/photo2.jpg",
      "Assets/Images/photo3.jpg",
      "Assets/Images/photo4.jpg"
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: testImages.length, // Use the length of your image list
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 0.6,
              child: BookCover(testImage: testImages[index]),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 16,
            );
          },
        ),
      ),
    );
  }
}
