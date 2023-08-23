import 'package:bookly/Features/home/presentation/views/book_details_view/Sections/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/adjacent_contianers.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/rate.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: const AspectRatio(
              aspectRatio: 0.7,
              child: BookCover(testImage: "Assets/Images/photo1.jpg")),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "The Jungle Book",
          style: Style.textStyle22,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Any author here",
          style: Style.textStyle16.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 15,
        ),
        const Rate(),
        const SizedBox(
          height: 20,
        ),
        const AdjacentContainers(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
