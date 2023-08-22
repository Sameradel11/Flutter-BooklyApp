import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/const.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> testImages = [
      "Assets/Images/photo1.jpg",
      "Assets/Images/photo2.jpg",
      "Assets/Images/photo3.jpg",
      "Assets/Images/photo4.jpg"
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: testImages.length,
        itemBuilder: (context, index) => AspectRatio(
            aspectRatio: Kcoveraspectration,
            child: BookCover(testImage: testImages[index])),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
