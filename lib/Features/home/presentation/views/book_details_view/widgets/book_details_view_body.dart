import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../Sections/book_info_section.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            BookInfoSection(book: book),
            const SizedBox(
              height: 50,
            ),
            // SimilarBookSection()
          ],
        ),
      ),
    );
  }
}
