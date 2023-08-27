import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/adjacent_contianers.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/rate.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/authors.dart';
import 'package:bookly/Features/home/presentation/views/homeView/widgets/book_cover.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: AspectRatio(
              aspectRatio: 0.7,
              child: BookCover(
                imagelink: book.volumeInfo.imageLinks!.thumbnail!,
              )),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          book.volumeInfo.title!,
          style: Style.textStyle22,
        ),
        const SizedBox(
          height: 10,
        ),
        Authors(authors: book.volumeInfo.authors!),
        const SizedBox(
          height: 15,
        ),
        Rate(
          avgrating: book.volumeInfo.averageRating!,
          count: book.volumeInfo.ratingsCount!,
        ),
        const SizedBox(height: 30),
        AdjacentContainers(book: book),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
